################################################################################
#####################Pasture Monitoring - Copernicus############################
################################################################################

####Project Functions####

check.for.property.metadata <- function(robject.directory = d.dir) {
  metadata.file <- list.files(path = robject.directory, pattern = "$propmeta.rda")
  if (length(metadata.file) == 0) {
    return(FALSE)
  } else {
    return(TRUE)
  }
};
print("check.for.property.metadata successfully loaded");
create.or.load.property.metadata <- function(available = FALSE){
  if(file.exists(paste0(w.dir,"/settings/property-metadata.rda"))) {
    load(file = paste0(w.dir,"/settings/property-metadata.rda"), verbose = TRUE, envir = .GlobalEnv);
    return(TRUE)
  } else {
    propmeta <- data.frame( "ID" = NA,
                            "Property" = NA,
                            "Sentinel" = NA,
                            "Shapefile" = NA,
                            "TreeMask" = NA,
                            "OutLoc" = NA,
                            "CRS.no" = NA,
                            "AppFile" = NA,
                            "AppFile2nd" = NA,
                            "Logo" = NA,
                            "MonthlyOnly" = NA,
                            "ShinyAppAccnt" = NA,
                            "ShinyAppAccnt2nd"= NA,
                            stringsAsFactors = FALSE)
    save(list = "propmeta", file = paste0(w.dir,"/settings/property-metadata.rda"))
    load(file = paste0(w.dir,"/settings/property-metadata.rda"), verbose = TRUE, envir = .GlobalEnv);
    return(FALSE)
  }
}
print("create.or.load.propmeta successfully loaded");
check.for.shapefiles <- function(farms = "list.of.farms", spatial.data.directory = "s.dir") {
  
};
print("check.for.shapefiles successfully loaded!")