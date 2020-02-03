# xoop

[![Gitter chat](https://badges.gitter.im/xoopR/community)](https://gitter.im/xoopR/community)

Convenient way to install, attach, or update the packages in the `xoop` universe.

## Installation

```R
remotes::install_github("raphaels1/xoop")
```

## Packages in xoop

| Package | Title | Description |
|:------- |:------|:------------|
|[R62S3](https://github.com/RaphaelS1/R62S3) | Automatic Method Generation from R6 | Automatic conversion of R6 public methods to S3 and S4 methods and functions. |
|[set6](https://github.com/RaphaelS1/set6) | R6 Mathematical Sets Interface | R6 object-oriented interface for mathematical sets. |
|[distr6](https://github.com/alan-turing-institute/distr6) |  The Complete R6 Probability Distributions Interface  | R6 object-oriented interface for probability distributions. |

## xoop's purpose

XOOP is the bridge between Functional Object-Oriented Programming (FOOP), found in S3 and S4, and Class Object-Oriented Programming (COOP), found in R6. The motivation behind `xoop` is to utilise the best of both worlds in order to create efficient and scalable object-oriented interfaces. To-date this has meant leveraging R6 to upgrade the [distr](https://CRAN.R-project.org/package=distr) family of packages to [distr6](https://CRAN.R-project.org/package=distr6) and the [sets](https://CRAN.R-project.org/package=sets) package to [set6](https://CRAN.R-project.org/package=set6). As well as using [R62S3](https://CRAN.R-project.org/package=R62S3) to allow programmers of R6 packages to lessen the R6 learning curve by efficiently introducing S3 alternatives to dispatch R6 methods.
