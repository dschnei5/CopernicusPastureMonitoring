################################################################################
#####################Pasture Monitoring - Copernicus############################
################################################################################


####Setup Control####

source("settings/settings.R");
source("scripts/load-libraries.R");
source("scripts/project-functions.R")
source("scripts/file-structure-create.R")

connection <- connect(host = d.host);
login();
colls <- list_collections();
processes <- list_processes();
formats <- list_file_formats();

flog.appender(appender.file(paste0(l.dir,"/processor_",as.numeric(now()),".log")));
flog.threshold('WARNING')

####END OF SCRIPT###