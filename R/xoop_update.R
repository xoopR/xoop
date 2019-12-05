#' @export
xoop_update = function(){
  df = xoop_info()

  out_of_date = as.numeric(gsub(".", "", df[,3], fixed = TRUE)) < as.numeric(gsub(".", "", df[,2], fixed = TRUE))

  if (sum(out_of_date) == 0) {
    cat("All packages already up to date.")
  } else {
    pkgs = df[,1][out_of_date]
    cat("The following packages are out of date.\n")
    df = data.frame(Package = c("None","All",pkgs), stringsAsFactors = FALSE)
    row.names(df) = 0:(nrow(df)-1)
    print(df)
    inst = as.character(readline("Which package do you want to install? (Comma separated for multiple): "))
    if (grepl("0", inst))
      cat("No packages installed.")
    else if (grepl("1", inst))
      install.packages(pkgs)
    else
      install.packages(df[as.numeric(strsplit(inst, ",", TRUE)[[1]]) + 1, 1])
  }
}
