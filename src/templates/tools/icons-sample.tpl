---
title: İkonlar
selected: İkonlar
---
İkonlar için özel olarak hazırlanmış bir ikon font kullanılmaktadır. Font boyutu ile, ikonların büyükleri herhangibir görünüm bozukluğu olmadan istenildiği gibi büyütülüp küçültülebilir. Font rengi tanımı ile de ikonların renkleri değiştirilebilir.

<div class="icons example">
    <p class="row">
        <% _.each(glyphs, function(glyph) { %><span class="<%= prefix %><%= glyph.name %> three-columns"> <%= prefix %><%= glyph.name %></span>
        <% }); %>
    </p>
</div>

``` {.lang-markup}
<span class="icon-info">Bilgi mesajı</span>
<a href="#" class="icon-info">Ana Sayfa</a>
<a href="#">Dış Link <i class="icon-external-link"></i></a>
```

### Notlar
Gösterilmek istenen ikona ait class eklenen ögenin `:before` pseudo elemanında otomatik olarak ikon font gözükmeye başlar. Yanına metin yazıldığında önce ikon, sonra metin şeklinde yukarıdaki örneklerdeki gibi bir görünüm sağlanır.

Eğer ikon metinden sonra gösterilmek isteniyorsa, `i {.tagname}` tagı kullanılarak, metinden sonra bu ögeye eklenecek ilgili ikon classı eklenir. (Örn: <span>Sonraki <i class="icon-caret-right"></i>)