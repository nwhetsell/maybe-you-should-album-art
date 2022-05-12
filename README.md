# “Maybe You Should” Album Art

This is a collection of scripts for creating the album art for
[“Maybe You Should”](https://music.apple.com/us/album/maybe-you-should-single/1623481094) using [R](https://www.r-project.org) and [ImageMagick](https://imagemagick.org),
based on concepts from https://github.com/cutterkom/generativeart.

To install R and ImageMagick using [Homebrew](https://brew.sh) on macOS, run:

```sh
brew install imagemagick r
```

To install the R packages [dplyr](https://dplyr.tidyverse.org) and
[ggplot2](https://ggplot2.tidyverse.org), run:

```sh
R -e 'install.packages(c("dplyr", "ggplot2"), repos = "https://cloud.r-project.org/")'
```

You should then be able to create the album art by running:

```sh
./create
```

<img width=480 src="https://user-images.githubusercontent.com/14102861/168062937-ac8b6b39-4587-45e4-a433-73165fb71491.png">
