################################################################################
#####################Pasture Monitoring - Copernicus############################
################################################################################

####Load Libraries####

####User defined functions####

loadlibraries <- function(pkg="List of Packages"){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  suppressPackageStartupMessages(sapply(pkg, require, character.only = TRUE))
  cat(paste0(pkg," - successfully loaded","\n"))
};

####Load Libraries####

print("Loading required packages...");
loadlibraries(pkg = list.of.packages);
rm(list.of.packages,loadlibraries)

####END OF SCRIPT####