if(!("distr6" %in% utils::installed.packages()[,1])){
  response <- readline("distr6 is not installed, do you want to install it? Y/N")
  if(response %in% c("y","Y")){
    install.packages("distr6")
    library(distr6)
    message("distr6 successfully loaded")
  } else
    message("distr6 not loaded")
} else{
  library(distr6)
  message("distr6 successfully loaded")
}

if(!("set6" %in% utils::installed.packages()[,1])){
  response <- readline("set6 is not installed, do you want to install it? Y/N")
  if(response %in% c("y","Y")){
    install.packages("set6")
    library(set6)
    message("set6 successfully loaded")
  } else
    message("set6 not loaded")
} else{
  library(set6)
  message("set6 successfully loaded")
}
