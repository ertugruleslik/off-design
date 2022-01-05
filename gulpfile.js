const srcDir = 'src'
const appDir = 'app'
const dist = `${appDir}/assets/`
const staticDir = 'static'
const imagesWatch  = 'jpg,jpeg,png,svg'
const filesWatch   = 'html,json,md,woff2,scss,php'

const libs = require(`./${srcDir}/tools/scripts`);
const packageName = require(`./package.json`).name;

const paths = {
    scripts: {
        src: [
            ...libs,
            `${srcDir}/js/app.js`,
            `${srcDir}/js/**/*.js`,
        ],
        dest: `${dist}/scripts`
    },
    styles: {
        src: `${srcDir}/styles/**/*.scss`,
        dest: `${dist}/styles`
    },
    images: {
        src: `${srcDir}/images/src`,
        dest: `${dist}/images`
    },
    icon: {
        src: `${srcDir}/svg/**/*.svg`,
        fontDest: `${dist}/fonts`,
        temp: `${srcDir}/tools/icons.tpl`,
        scssDest: `${srcDir}/styles/elements/`,
    },
    tpl: {
        src: `${srcDir}/templates/**/*.tpl`,
        pagesSrc: `${srcDir}/templates/pages/*.tpl`,
        dest: `${appDir}`
    }
}

const { src, watch, dest, series, parallel } = require('gulp')
const concat          = require('gulp-concat')
const browserSync     = require('browser-sync').create()
const uglify          = require('gulp-uglify-es').default
const sass            = require('gulp-sass')
const groupMediaCSS   = require('gulp-group-css-media-queries')
const autoprefixer    = require('gulp-autoprefixer')
const cleanCSS        = require('gulp-clean-css')
const newer           = require('gulp-newer')
const webp            = require('gulp-webp')
const imagemin        = require('gulp-imagemin')
const del             = require('del')
const nunjucksRender  = require('gulp-nunjucks-render')
const rename          = require('gulp-rename')
const consolidate          = require('gulp-consolidate')
const iconfont        = require('gulp-iconfont');

function browsersync() {``
    browserSync.init({
        proxy: `http://localhost:8888/${packageName}/app/`,
        notify: false
    })
}

function scripts() {
    return src(paths.scripts.src)
        .pipe(concat('scripts.min.js'))
        .pipe(uglify())
        .pipe(dest(paths.scripts.dest))
        .pipe(browserSync.stream())
}

function styles() {
    return src(paths.styles.src)
        .pipe(sass())
        .pipe(groupMediaCSS())
        .pipe(autoprefixer({ overrideBrowserslist: ['last 5 versions'], grid: true }))
        .pipe(concat('styles.min.css'))
        .pipe(cleanCSS({ level: { 1: { specialComments: 0 } }, }))
        .pipe(dest(paths.styles.dest))
        .pipe(browserSync.stream())

}

function images() {
    return src(`${paths.images.src}/**/*`)
        .pipe(newer(paths.images.dest))
        .pipe(webp({ quality: 70 }))
        .pipe(dest(paths.images.dest))
        .pipe(src(`${paths.images.src}/**/*`))
        .pipe(newer(paths.images.dest))
        .pipe(imagemin({ progressive: true, svgPlugins: [{ removeViewBox: false }], interlaced: true, optimizationLevel: 3 }))
        .pipe(dest(paths.images.dest))
        .pipe(browserSync.stream())
}

function icons() {
    const runTimestamp = Math.round(Date.now()/1000);
    return src(paths.icon.src)
        .pipe(iconfont({
            fontName: packageName,
            prependUnicode: true,
            formats: ['ttf', 'eot', 'woff'],
            timestamp: runTimestamp,
        }))
        .on('glyphs', function(glyphs) {
            src(paths.icon.temp)
                .pipe(consolidate('lodash', {
                    glyphs: glyphs,
                    prefix: 'icon-'
                }))
                .pipe(rename('_icons.scss'))
                .pipe(dest(paths.icon.scssDest));
        })
        .pipe(dest(paths.icon.fontDest));
}

function cleanimg() {
    return del([`${paths.images.dest}/**/*`, `!${paths.images.src}`, `!${paths.images.dest}/favicons`], { force: true })
}
function cleanstatic() {
    return del(`${staticDir}`, { force: true })
}

function startwatch(){
    watch(`${srcDir}/**/*.{${filesWatch}}`).on('change', browserSync.reload);
    watch([`${srcDir}/js/*.js`, `!${paths.scripts.dest}/*.min.js`], scripts);
    watch(`${srcDir}/styles/**/*`, styles);
    watch(`${paths.images.src}/**/*.{${imagesWatch}}`, images);
    watch(`${paths.tpl.src}`, render)
}

function render() {
    return src(`${paths.tpl.pagesSrc}`)
        .pipe(nunjucksRender({
            path: `${srcDir}/templates`
        }))
        .pipe(dest(`${paths.tpl.dest}/`))
}

function buildhtml() {return src(`${srcDir}/*.html`).pipe(dest(`${staticDir}`))}
function buildcss() {return src(`${srcDir}/css/style.min.css`).pipe(dest(`${staticDir}/css`))}
function buildjs() {return src(`${srcDir}/js/scripts.min.js`).pipe(dest(`${staticDir}/js`))}
function buildfonts() {return src(`${srcDir}/fonts/**/*.*`).pipe(dest(`${staticDir}/fonts`))}
function buildimg() {return src([`${srcDir}/images/**/*.*`, `!${paths.images.src}`]).pipe(dest(`${staticDir}/images`))}

exports.scripts = scripts
exports.browsersync = browsersync
exports.styles = styles
exports.images = images
exports.cleanimg = cleanimg
exports.render = render
exports.clean = cleanstatic
exports.icons = icons

exports.generate = series(render, parallel(buildhtml, buildcss, buildjs, buildimg, buildfonts))
exports.build = series(cleanimg, parallel(scripts, styles, images))
exports.default = parallel(render, scripts, styles, images, browsersync,startwatch)
