library(dplyr)
library(data.table)
library(ggplot2)

#setwd("/Users/sichenghao/Google Drive/Shared/Integration_Alzheimer's/") #SH dir






################## TODO #####################
# Implement SMR/HEIDI 
#



################## Read in data ##############
height.freq<-fread(file = "./A_nature/GIANT_EXTREME_BMI_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt")
height.enrichment<-fread(file = "GIANT_HEIGHT_Wood_et_al_2014_depict_gene_set_enrichment.txt")

cis<-fread(file = "./A_nature/eqtl/2012-12-21-CisAssociationsProbeLevelFDR0.5.txt")
trans<-fread(file = "./A_nature/eqtl/2012-12-21-TransEQTLsFDR0.5.txt",sep = "\t")#not working

#load(file = "./eqtl-ramasay/expr.maps.rda")




################## Main Algorithm #####################



################# Data transfer for SMR.exe############

GWAS.sum<-fread(file = "./A_nature/GIANT_EXTREME_BMI_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt")
GWAS.sum<-GWAS.sum%>%mutate(n = N_cases+N_controls)%>%
  select(SNP=MarkerName,A1=Allele1,A2=Allele2,freq=Allele1_Freq_HapMapCEU,b=beta,se=se,p=P,n=n)
GWAS.sum<-GWAS.sum[1:1000,]
save(GWAS.sum,file = "./A_nature/mygwas.ma")





