################################################################################
#####################Pasture Monitoring - Copernicus############################
################################################################################

####Processor####

####Initiate Processor####

tryCatchLog(
  {
    source("scripts/setup-control.R");
    source("scripts/control-processor")
  },
  error=function(cond){
    base::message("Here is the error message:");
    base::message(cond);
  },
  warning=function(cond){
    base::message("Here are the warning messages:");
    base::message(cond);
  },
  finally={
    print("Processing Completed...")
    beep(sound = 3);
    Sys.sleep(2);
    base::message(paste("Output data located in: ",o.dir));
    disconnect();
    Sys.sleep(2);
    rm(list=ls());
    gc();
    gc();
    Sys.sleep(5);
    quit(save = "yes");
  }
  
)

####END OF SCRIPT####
