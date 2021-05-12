rmarkdown\_to\_pdf
================
Yoshinobu Ishizaki
2020/4/26 revised 2021-05-12

-   [準備](#準備)
    -   [Version 4.0](#version-40)
    -   [Version 3.6](#version-36)
-   [参考](#参考)
    -   [Ver 4.0](#ver-40)
    -   [Ver 3.6](#ver-36)

日本語テスト

``` r
plot(cars)
title("てすと")
```

![](rmarkdown_to_pdf_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

この文章がknit to pdfにできたら問題なし。

# 準備

    install.packages("tinytex")
    tinytex::install_tinytex(extra_packages = "collection-langjapanese")

インストール終了後、

    tinytex:::is_tinytex()

がTRUEになればOK。

## Version 4.0

<https://stackoverflow.com/questions/66305776/got-knit-issue-with-r>
を参考にpdfcropとghostscriptをインストールしてパスを通す。

YAMLに、`geometry: no`の行があると途中でクラッシュするので、その行は消す。

プロットの日本語文字については、Systemにインストールされているフォント名を

      knitr::opts_chunk$set(dev="cairo_pdf", dev.args=list(family="Yu Gothic")) # for windows

の部分で指定すると良い。

フォント名は、`systemfonts::systemfonts()`で探すことができる。

## Version 3.6

knit to PDFで `! LaTeX Error: Option clash for package geometry.`

と言うエラーになった場合は、pandocの–templateの指定ファイルを探して、

`sudo nano /usr/local/lib/R/site-library/rmarkdown/rmd/latex/default-1.17.0.2.tex`

F6でgeometryを探して、

    $if(geometry)$
    %\usepackage[$for(geometry)$$geometry$$sep$,$endfor$]{geometry}
    $endif$

とコメントアウトすると良い。

# 参考

## Ver 4.0

-   <https://stackoverflow.com/questions/66305776/got-knit-issue-with-r>
-   <https://www.karada-good.net/analyticsr/r-633>
-   <https://ill-identified.hatenablog.com/entry/2020/10/03/200618>

## Ver 3.6

-   <http://nonki1974.hateblo.jp/entry/2018/12/27/011003>
-   <https://qiita.com/nozma/items/1c6b000b674225fd40d7>
-   <https://www.trifields.jp/how-to-set-up-for-outputting-a-pdf-of-the-japanese-at-knitr-in-ubuntu-1404-and-r-1615>
