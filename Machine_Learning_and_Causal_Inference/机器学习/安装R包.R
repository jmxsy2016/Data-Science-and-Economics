# 本书所有需要的R包
pkgs = c('lubridate', 'rARPACK', 'Matrix', 'reshape', 'reshape2', 'plyr',
         'readxl', 'RMySQL', 'RPostgreSQL', 'RODBC', 'zoo', 'ggplot2', 'plotly',
         'jiebaR', 'showtext', 'rms', 'gridExtra', 'pROC', 'class', 'stringr',
         'dplyr', 'pander', 'data.table', 'knitr', 'jpeg', 'png', 'RgoogleMaps',
         'magick', 'imager', 'caret', 'lattice', 'rpart', 'randomForest', 'gbm',
         'XML', 'bitops', 'RCurl', 'rvest', 'xml2', 'httr', 'RANN')

# 逐个安装
for (pkg in pkgs)
{
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
  }
}

# 安装EBImage包，只安装一次即可
source("http://bioconductor.org/biocLite.R")
biocLite("EBImage")