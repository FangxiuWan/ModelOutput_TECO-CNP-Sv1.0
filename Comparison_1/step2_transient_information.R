
library(dplyr)
library(tidyr)

# C pools, Cflux

setwd('/Users/wan/1-WanWork/Case1-TraceE/9-TECOCNP图文修改/NewSpinup20250104/tt13/TR/teco_cnp')

QC<-read.csv('simu_8cpools_lastyear_cnp.csv',header = FALSE)
reQC<-colMeans(QC)
reQC
outQC<-read.csv('teco_outc_cnp.csv',header = FALSE)
reoutQC<-colSums(outQC[c(6941:7305),])
reoutQC
QC_data<-round(as.data.frame(rbind(reQC,reoutQC)),digit=1)
write.csv(QC_data,'A_QC_data_cnp.csv')
cflux<-read.csv('simu_cflux_lastyear_record_cnp.csv',header = FALSE)
recflux<-cflux[,c(1:4,8)] # GPP,ER,NEE,LAI,Rh
colSums(recflux)
mean(recflux[,5]) #Rh
sd(recflux[,5]) #Rh
mean(recflux[,4]) #LAI
write.csv(recflux,'A_result_cflux_cnp.csv')

# - 


## N cycle ##
QN<-read.csv('CNP_Ncycle_simu_pools_lastyear_cnp.csv',header = FALSE)
QN[365,]
reQN<-colMeans(QN)
reQN
outQN<-read.csv('teco_outn_cnp.csv',header = FALSE)
reoutQN<-colSums(outQN[c(6941:7305),])
reoutQN

QN_data<-round(as.data.frame(rbind(reQN,reoutQN)),digit=1)
QN_data
write.csv(QN_data,'A_QN_data_cnp.csv')

QNminer<-read.csv('CNP_NNNcycle_dynamics_lastyear_cnp.csv',header = FALSE)
Nmin<-sum(QNminer[,5])
QNmin<-mean(QNminer[,9])

MinerN<-round(cbind(Nmin,QNmin),digits = 1)
MinerN
write.csv(MinerN,'A_minerN_flux_cnp.csv')


## P cycle ##
QP<-read.csv('CNP_Pcycle_simu_pools_lastyear_cnp.csv',header = FALSE)
reQP<-colMeans(QP)
reQP
outQP<-read.csv('teco_outp_cnp.csv',header = FALSE)
write.csv(as.data.frame(outQP[c(6941:7305),]),'last_outP_cnp_test.csv')
reoutQP<-colSums(outQP[c(6941:7305),])
reoutQP

QP_data<-round(as.data.frame(rbind(reQP,reoutQP)),digit=1)
write.csv(QP_data,'A_QP_data_cnp.csv')

QPlab<-read.csv('CNP_PPPcycle_dynamics_lastyear_cnp.csv',header = FALSE)
Pmin<-sum(QPlab[,2])
QPlab_size<-mean(QPlab[,10])

MinerP<-round(cbind(Pmin,QPlab_size),digits = 1)
MinerP
write.csv(MinerP,'A_minerP_flux_cnp.csv')

rm(list=ls())

##### CN #####
setwd('/Users/wan/1-WanWork/Case1-TraceE/9-TECOCNP图文修改/NewSpinup20250104/tt13/TR/teco_cn')
QC<-read.csv('simu_8cpools_lastyear_cn.csv',header = FALSE)
reQC<-colMeans(QC)
reQC
outQC<-read.csv('teco_outc_cn.csv',header = FALSE)
reoutQC<-colSums(outQC[c(6941:7305),])
reoutQC
QC_data<-round(as.data.frame(rbind(reQC,reoutQC)),digit=1)
write.csv(QC_data,'A_QC_data_cn.csv')
cflux<-read.csv('simu_cflux_lastyear_record_cn.csv',header = FALSE)
recflux<-cflux[,c(1:4,8)]
colSums(recflux)
LAI<-cflux[,4]
mean(recflux[,4]) #LAI
write.csv(recflux,'A_result_cflux_cn.csv')

## N cycle ##
QN<-read.csv('CNP_Ncycle_simu_pools_lastyear_cn.csv',header = FALSE)
reQN<-colMeans(QN)
reQN
outQN<-read.csv('teco_outn_cn.csv',header = FALSE)
reoutQN<-colSums(outQN[c(6941:7305),])
reoutQN

QN_data<-round(as.data.frame(rbind(reQN,reoutQN)),digit=1)
write.csv(QN_data,'A_QN_data_cn.csv')

QNminer<-read.csv('CNP_NNNcycle_dynamics_lastyear_cn.csv',header = FALSE)
Nmin<-sum(QNminer[,5])
QNmin<-mean(QNminer[,9])

MinerN<-round(cbind(Nmin,QNmin),digits = 1)
write.csv(MinerN,'A_minerN_flux_cn.csv')

rm(list=ls())
##### C #####
setwd('/Users/wan/1-WanWork/Case1-TraceE/9-TECOCNP图文修改/NewSpinup20250104/tt13/TR/teco_c')

QC<-read.csv('simu_8cpools_lastyear_c.csv',header = FALSE)
reQC<-colMeans(QC)
reQC
outQC<-read.csv('teco_outc_c.csv',header = FALSE)
reoutQC<-colSums(outQC[c(6941:7305),])
reoutQC
QC_data<-round(as.data.frame(rbind(reQC,reoutQC)),digit=1)
write.csv(QC_data,'A_QC_data_c.csv')
cflux<-read.csv('simu_cflux_lastyear_record_c.csv',header = FALSE)
recflux<-cflux[,c(1:4,8)]
colSums(recflux)
colSums(recflux)/8760
LAI<-mean(cflux[,4])
LAI
write.csv(recflux,'A_result_cflux_c.csv')

