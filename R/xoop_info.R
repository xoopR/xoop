#' @export
xoop_info = function(){
  df = data.frame(Package = c("R62S3","set6","distr6"),
                  Available_Version = c("1.3.1", "0.1.0", "1.3.1"),
                  Installed_Version = NA,
                  stringsAsFactors = FALSE)

  ver = sapply(df$Package, function(x) try(as.character(utils::packageVersion(x)), silent = TRUE))

  df[!grepl("Error", ver), "Installed_Version"] = unlist(ver[!grepl("Error", ver)])
  df
}
