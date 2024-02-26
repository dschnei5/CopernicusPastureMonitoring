################################################################################
#####################Pasture Monitoring - Copernicus############################
################################################################################

####Settings####

list.of.packages <- c("openeo","stars","ggplot2","rgdal","raster","lubridate","tryCatchLog","futile.logger","pbapply","dplyr","beepr");

list.of.farms <- c("Plateau","Willoh","Mundawa")

# Set Working Directory
setwd <- "C:/R/CopernicusPastureMonitoring"; 
w.dir <- getwd();

# Set Robject Directory
d.dir <- paste0(w.dir,"/robjects");

# Set Output Data Directory
o.dir <- paste0(w.dir,"/dataout");

# Set Spatial Data Directory
s.dir <- paste0(w.dir,"/spatialdata");

# Set Archive Data Directory
a.dir <- paste0(w.dir,"/archive");

# Set Log file Directory
l.dir <- paste0(w.dir,"/logs");

# Shiny App Location
ap.dir <- paste0(w.dir,"/rshinyapp/CopernicusPastureMonitoring")

# Data repository location
d.host <- "https://openeo.dataspace.copernicus.eu"

####End of Script####