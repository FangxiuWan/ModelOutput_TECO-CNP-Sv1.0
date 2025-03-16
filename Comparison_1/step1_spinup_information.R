setwd('/Users/wan/1-WanWork/Case1-TraceE/9-TECOCNP图文修改/NewSpinup20250104/tt3/teco_cnptt13/')
library(dplyr)
library(tidyr)

QC<-read.csv('teco_8cpools_cnp.csv',header = FALSE)
CN<-read.csv('CNP_Ncycle_simu_ratios_cnp.csv',header = FALSE)
CP<-read.csv('CNP_Pcycle_simu_ratios_cnp.csv',header = FALSE)

QC0<-colMeans(QC)
CN0<-colMeans(CN)
CP0<-colMeans(CP)

Initialstate<-round(as.data.frame((rbind(QC0,CN0,CP0))),digits = 1)
write.csv(Initialstate,'A_Initialstate_fromspinup_cnp.csv',row.names = FALSE)


c_end<-read.csv('teco_simu_cflux_cnp.csv',header = FALSE)
c_need<-c_end[,c(4,6,24)]

n_end<-read.csv('CNP_NNNcycle_dynamics_lastyear_cnp.csv',header = FALSE)
n_need<-n_end[,9]

p_end<-read.csv('CNP_PPPcycle_dynamics_lastyear_cnp.csv',header = FALSE)

p_need<-p_end[,c(10:12)]


need<-cbind(c_need,n_need,p_need)
colnames(need)<-c('LAI','NSC','accumulation','QNminer','QPlab',	'QPsorb',	'QPss')
write.csv(need[365,],'A_need_fromlastyearlastday_cnp.csv')


##### CN #####
setwd('/Users/wan/1-WanWork/Case1-TraceE/9-TECOCNP图文修改/NewSpinup20250104/tt3/teco_cntt13/')
QC<-read.csv('teco_8cpools_cn.csv',header = FALSE)
CN<-read.csv('CNP_Ncycle_simu_ratios_cn.csv',header = FALSE)

QC0<-colMeans(QC)
CN0<-colMeans(CN)

Initialstate<-round(as.data.frame((rbind(QC0,CN0))),digits = 1)
write.csv(Initialstate,'A_Initialstate_fromspinup_cn.csv',row.names = FALSE)


c_end<-read.csv('teco_simu_cflux_cn.csv',header = FALSE)
c_need<-c_end[,c(4,6,24)]

n_end<-read.csv('CNP_NNNcycle_dynamics_lastyear_cn.csv',header = FALSE)
n_need<-n_end[,9]

need<-cbind(c_need,n_need)
colnames(need)<-c('LAI','NSC','accumulation','QNminer')
write.csv(need[365,],'A_need_fromlastyearlastday_cn.csv')

##### C #####
setwd('/Users/wan/1-WanWork/Case1-TraceE/9-TECOCNP图文修改/NewSpinup20250104/tt3/teco_ctt13/')

QC<-read.csv('teco_8cpools_c.csv',header = FALSE)

QC0<-colMeans(QC)

Initialstate<-round(as.data.frame((rbind(QC0))),digits = 1)
write.csv(Initialstate,'A_Initialstate_fromspinup_c.csv',row.names = FALSE)


c_end<-read.csv('teco_simu_cflux_c.csv',header = FALSE)
c_need<-c_end[,c(4,6,24)]

need=c_need
colnames(need)<-c('LAI','NSC','accumulation')
write.csv(need[365,],'A_need_fromlastyearlastday_c.csv')
