learNN
-------------
[![License](http://img.shields.io/badge/license-GPLv3-brightgreen.svg?style=flat)](http://www.gnu.org/licenses/gpl-3.0.html)
[![CRAN Version](http://www.r-pkg.org/badges/version/learNN)](http://cran.r-project.org/package=learNN)
[![RStudio Cloud Downloads](http://cranlogs.r-pkg.org/badges/learNN?color=brightgreen)](http://cran.rstudio.com/package=learNN)
[![Travis-CI Build Status](https://travis-ci.org/bquast/learNN.svg?branch=master)](https://travis-ci.org/bquast/learNN)
[![Coverage Status](https://img.shields.io/coveralls/bquast/learNN.svg)](https://coveralls.io/r/bquast/learNN?branch=master)

Implementations of several basic neural network concepts in R, as based on posts on http://qua.st/.


Installation
-------------
The stable version of the `learNN` package can be install from [CRAN](http://cran.r-project.org/package=learNN) using:

```r
install.packages("learNN")
```

The development version, to be used **at your peril**, can be installed using:

```r
if (!require('devtools')) install.packages('devtools')
devtools::install_github("bquast/learNN")
```


Usage
-------
Following installation, the package can be loaded using:

```r
library(learNN)
```

For general information on using the package, please refer to the help files.

```r
help("learNN")
help(package = "learNN")
```
    
For examples of usage, see the function specific help page.

```r
help("learn_bp")
help("learn_gd")
help("learn_do")
```


Additional Information
-----------------------
An overview of the changes is available in the NEWS file.

```r
news(package="learNN")
```

There is also a blog post with information on my [personal website](http://qua.st/).

http://qua.st/learNN/
 

Development
-------------
Development takes place on the [GitHub](https://github.com/) page.

https://github.com/bquast/learNN

Bugs can be filed on the issues page on GitHub.

https://github.com/bquast/learNN/issues
