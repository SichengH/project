library(dplyr)
library(data.table)
library(ggplot2)

#setwd("/Users/sichenghao/Google Drive/Shared/Integration_Alzheimer's/") #SH dir






################## TODO #####################
# Implement SMR/HEIDI 
#



################## Read in data ##############
height.freq<-fread(file = "GIANT_HEIGHT_Wood_et_al_2014_publicrelease_HapMapCeuFreq.txt")
height.enrichment<-fread(file = "GIANT_HEIGHT_Wood_et_al_2014_depict_gene_set_enrichment.txt")

cis<-fread(file = "./eqtl-ramasay/2012-12-21-CisAssociationsProbeLevelFDR0.5.txt")
trans<-fread(file = "./eqtl-ramasay/2012-12-21-TransEQTLsFDR0.5.txt",sep = "\t")#not working

#load(file = "./eqtl-ramasay/expr.maps.rda")




################## Main Algorithm #####################










