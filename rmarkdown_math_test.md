# Abstract

どのようにして数式を含むRMarkdown形式をgitlabで綺麗に表示出来るmarkdownに変換するか。

# Paragraphs including math expressions

``` r
library(tidyverse)
library(rmarkdown)
```

数式表現$`\lambda`$ などが問題で、通常のmd\_document変換ではちゃんとgitlabで表示できる形式に変換されない。

```math
y = x^2 \lambda
```

``` r
cars
```

    ##    speed dist
    ## 1      4    2
    ## 2      4   10
    ## 3      7    4
    ## 4      7   22
    ## 5      8   16
    ## 6      9   10
    ## 7     10   18
    ## 8     10   26
    ## 9     10   34
    ## 10    11   17
    ## 11    11   28
    ## 12    12   14
    ## 13    12   20
    ## 14    12   24
    ## 15    12   28
    ## 16    13   26
    ## 17    13   34
    ## 18    13   34
    ## 19    13   46
    ## 20    14   26
    ## 21    14   36
    ## 22    14   60
    ## 23    14   80
    ## 24    15   20
    ## 25    15   26
    ## 26    15   54
    ## 27    16   32
    ## 28    16   40
    ## 29    17   32
    ## 30    17   40
    ## 31    17   50
    ## 32    18   42
    ## 33    18   56
    ## 34    18   76
    ## 35    18   84
    ## 36    19   36
    ## 37    19   46
    ## 38    19   68
    ## 39    20   32
    ## 40    20   48
    ## 41    20   52
    ## 42    20   56
    ## 43    20   64
    ## 44    22   66
    ## 45    23   54
    ## 46    24   70
    ## 47    24   92
    ## 48    24   93
    ## 49    24  120
    ## 50    25   85

``` r
cars %>% ggplot(aes(x = speed, y = dist)) + 
    geom_line() + ggtitle("車")
```

![](rmarkdown_math_test_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->
