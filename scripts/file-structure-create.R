################################################################################
#####################Pasture Monitoring - Copernicus############################
################################################################################

####File Structure Create####

if (!dir.exists(d.dir)) {
  dir.create(paste0(d.dir))
}

if (!dir.exists(o.dir)) {
  dir.create(paste0(o.dir))
}

if (!dir.exists(s.dir)) {
  dir.create(paste0(s.dir,"/shapefiles"), recursive = TRUE)
}

if (!dir.exists(s.dir)) {
  dir.create(paste0(s.dir,"/treemasks"), recursive = TRUE)
}

if (!dir.exists(a.dir)) {
  dir.create(paste0(a.dir))
}

if (!dir.exists(l.dir)) {
  dir.create(paste0(l.dir))
}

if (!dir.exists(ap.dir)) {
  dir.create(paste0(ap.dir))
}