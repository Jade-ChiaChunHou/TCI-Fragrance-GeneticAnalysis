library(ggplot2)
library(varhandle)

#setwd
setwd('/Users/hou/Desktop/tci/fragrance/data')

# read fragrance data
frag = read.csv('fragrance_nCOUNTER.csv')

row_name = frag[,1]


###########
#Eucalyptus
###########

euc = frag[,2:9]
rownames(euc) = frag[,1]


# normalize with W0
euc_sub1 = euc[,5] / euc[,1]
euc_sub2 = euc[,6] / euc[,2]
euc_sub3 = euc[,7] / euc[,3]
euc_sub4 = euc[,8] / euc[,4]


euc_nor = cbind(euc_sub1, euc_sub2, euc_sub3, euc_sub4)
euc_nor = data.frame(euc_nor)
rownames(euc_nor) = frag[,1]





#########
# parsley
#########

par = frag[,10:17]
rownames(par) = frag[,1]


# normalize with W0
par_sub1 = par[,5] / par[,1]
par_sub2 = par[,6] / par[,2]
par_sub3 = par[,7] / par[,3]
par_sub4 = par[,8] / par[,4]


par_nor = cbind(par_sub1, par_sub2, par_sub3, par_sub4)
par_nor = data.frame(par_nor)
rownames(par_nor) = frag[,1]




#############
#Black Pepper
#############


pep = frag[,18:25]
rownames(pep) = frag[,1]


# normalize with W0
pep_sub1 = pep[,5] / pep[,1]
pep_sub2 = pep[,6] / pep[,2]
pep_sub3 = pep[,7] / pep[,3]
pep_sub4 = pep[,8] / pep[,4]


pep_nor = cbind(pep_sub1, pep_sub2, pep_sub3, pep_sub4)
pep_nor = data.frame(pep_nor)
rownames(pep_nor) = frag[,1]







#########
#Tea Tree
#########


tea = frag[,26:33]
rownames(tea) = frag[,1]


# normalize with W0
tea_sub1 = tea[,5] / tea[,1]
tea_sub2 = tea[,6] / tea[,2]
tea_sub3 = tea[,7] / tea[,3]
tea_sub4 = tea[,8] / tea[,4]


tea_nor = cbind(tea_sub1, tea_sub2, tea_sub3, tea_sub4)
tea_nor = data.frame(tea_nor)
rownames(tea_nor) = frag[,1]





#####
#Mint
#####


mint = frag[,34:39]
rownames(mint) = frag[,1]


# normalize with W0
mint_sub1 = mint[,4] / mint[,1]
mint_sub2 = mint[,5] / as.numeric(unfactor(mint[,2]))
mint_sub3 = mint[,6] / mint[,3]



mint_nor = cbind(mint_sub1, mint_sub2, mint_sub3)
mint_nor = data.frame(mint_nor)
rownames(mint_nor) = frag[,1]





#############
#Sweet Orange
#############


ora = frag[,40:47]
rownames(ora) = frag[,1]


# normalize with W0
ora_sub1 = ora[,5] / ora[,1]
ora_sub2 = ora[,6] / ora[,2]
ora_sub3 = ora[,7] / ora[,3]
ora_sub4 = ora[,8] / ora[,4]


ora_nor = cbind(ora_sub1, ora_sub2, ora_sub3, ora_sub4)
ora_nor = data.frame(ora_nor)
rownames(ora_nor) = frag[,1]





######
#Lemon
######


lem = frag[,48:55]
rownames(lem) = frag[,1]


# normalize with W0
lem_sub1 = lem[,5] / lem[,1]
lem_sub2 = lem[,6] / lem[,2]
lem_sub3 = lem[,7] / lem[,3]
lem_sub4 = lem[,8] / lem[,4]


lem_nor = cbind(lem_sub1, lem_sub2, lem_sub3, lem_sub4)
lem_nor = data.frame(lem_nor)
rownames(lem_nor) = frag[,1]






########
#Cypress
########


cyp = frag[,56:63]
rownames(cyp) = frag[,1]


# normalize with W0
cyp_sub1 = cyp[,5] / cyp[,1]
cyp_sub2 = cyp[,6] / cyp[,2]
cyp_sub3 = cyp[,7] / cyp[,3]
cyp_sub4 = cyp[,8] / cyp[,4]


cyp_nor = cbind(cyp_sub1, cyp_sub2, cyp_sub3, cyp_sub4)
cyp_nor = data.frame(cyp_nor)
rownames(cyp_nor) = frag[,1]





########
#Milk
########


milk = frag[,64:71]
rownames(milk) = frag[,1]


# normalize with W0
milk_sub1 = milk[,5] / milk[,1]
milk_sub2 = milk[,6] / milk[,2]
milk_sub3 = milk[,7] / milk[,3]
milk_sub4 = milk[,8] / milk[,4]


milk_nor = cbind(milk_sub1, milk_sub2, milk_sub3, milk_sub4)
milk_nor = data.frame(milk_nor)
rownames(milk_nor) = frag[,1]





##########
#Melaleuca
##########


mel = frag[,72:79]
rownames(mel) = frag[,1]


# normalize with W0
mel_sub1 = mel[,5] / mel[,1]
mel_sub2 = mel[,6] / mel[,2]
mel_sub3 = mel[,7] / mel[,3]
mel_sub4 = mel[,8] / mel[,4]


mel_nor = cbind(mel_sub1, mel_sub2, mel_sub3, mel_sub4)
mel_nor = data.frame(mel_nor)
rownames(mel_nor) = frag[,1]





#########
#Lavender
#########


lav = frag[,80:87]
rownames(lav) = frag[,1]


# normalize with W0
lav_sub1 = as.numeric(unfactor(lav[,5])) / lav[,1]
lav_sub2 = lav[,6] / lav[,2]
lav_sub3 = lav[,7] / lav[,3]
lav_sub4 = lav[,8] / lav[,4]


lav_nor = cbind(lav_sub1, lav_sub2, lav_sub3, lav_sub4)
lav_nor = data.frame(lav_nor)
rownames(lav_nor) = frag[,1]




#########
#Yilan
#########


yil = frag[,88:95]
rownames(yil) = frag[,1]


# normalize with W0
yil_sub1 = yil[,5] / yil[,1]
yil_sub2 = yil[,6] / yil[,2]
yil_sub3 = as.numeric(unfactor(yil[,7])) / yil[,3]
yil_sub4 = yil[,8] / yil[,4]


yil_nor = cbind(yil_sub1, yil_sub2, yil_sub3, yil_sub4)
yil_nor = data.frame(yil_nor)
rownames(yil_nor) = frag[,1]



#########
#Geranium
#########


ger = frag[,96:103]
rownames(ger) = frag[,1]


# normalize with W0
ger_sub1 = ger[,5] / ger[,1]
ger_sub2 = ger[,6] / ger[,2]
ger_sub3 = ger[,7] / ger[,3]
ger_sub4 = ger[,8] / ger[,4]


ger_nor = cbind(ger_sub1, ger_sub2, ger_sub3, ger_sub4)
ger_nor = data.frame(ger_nor)
rownames(ger_nor) = frag[,1]




###########
#Grapefruit
###########


gra = frag[,104:111]
rownames(gra) = frag[,1]


# normalize with W0
gra_sub1 = gra[,5] / gra[,1]
gra_sub2 = gra[,6] / gra[,2]
gra_sub3 = gra[,7] / gra[,3]
gra_sub4 = gra[,8] / gra[,4]


gra_nor = cbind(gra_sub1, gra_sub2, gra_sub3, gra_sub4)
gra_nor = data.frame(gra_nor)
rownames(gra_nor) = frag[,1]




########
#Juniper
########

jun = frag[,112:119]
rownames(jun) = frag[,1]


# normalize with W0
jun_sub1 = jun[,5] / jun[,1]
jun_sub2 = jun[,6] / jun[,2]
jun_sub3 = jun[,7] / jun[,3]
jun_sub4 = jun[,8] / jun[,4]


jun_nor = cbind(jun_sub1, jun_sub2, jun_sub3, jun_sub4)
jun_nor = data.frame(jun_nor)
rownames(jun_nor) = frag[,1]




#########
#Marjoram
#########

mar = frag[,120:127]
rownames(mar) = frag[,1]


# normalize with W0
mar_sub1 = mar[,5] / mar[,1]
mar_sub2 = mar[,6] / mar[,2]
mar_sub3 = mar[,7] / mar[,3]
mar_sub4 = mar[,8] / mar[,4]


mar_nor = cbind(mar_sub1, mar_sub2, mar_sub3, mar_sub4)
mar_nor = data.frame(mar_nor)
rownames(mar_nor) = frag[,1]






###########
#Rose Grass
###########

rose = frag[,128:135]
rownames(rose) = frag[,1]


# normalize with W0
rose_sub1 = rose[,5] / rose[,1]
rose_sub2 = rose[,6] / rose[,2]
rose_sub3 = rose[,7] / rose[,3]
rose_sub4 = rose[,8] / rose[,4]


rose_nor = cbind(rose_sub1, rose_sub2, rose_sub3, rose_sub4)
rose_nor = data.frame(rose_nor)
rownames(rose_nor) = frag[,1]



###########
#Patchouli
###########

pat = frag[,136:141]
rownames(pat) = frag[,1]


# normalize with W0
pat_sub1 = pat[,4] / pat[,1]
pat_sub2 = pat[,5] / pat[,2]
pat_sub3 = pat[,6] / pat[,3]



pat_nor = cbind(pat_sub1, pat_sub2, pat_sub3)
pat_nor = data.frame(pat_nor)
rownames(pat_nor) = frag[,1]






#########
#bergamot
#########

ber = frag[,142:149]
rownames(ber) = frag[,1]


# normalize with W0
ber_sub1 = ber[,5] / ber[,1]
ber_sub2 = ber[,6] / ber[,2]
ber_sub3 = as.numeric(unfactor(ber[,7])) / ber[,3]
ber_sub4 = ber[,8] / ber[,4]


ber_nor = cbind(ber_sub1, ber_sub2, ber_sub3, ber_sub4)
ber_nor = data.frame(ber_nor)
rownames(ber_nor) = frag[,1]




######
#ceber
######

ceb = frag[,150:157]
rownames(ceb) = frag[,1]


# normalize with W0
ceb_sub1 = ceb[,5] / ceb[,1]
ceb_sub2 = ceb[,6] / ceb[,2]
ceb_sub3 = ceb[,7] / ceb[,3]
ceb_sub4 = ceb[,8] / ceb[,4]


ceb_nor = cbind(ceb_sub1, ceb_sub2, ceb_sub3, ceb_sub4)
ceb_nor = data.frame(ceb_nor)
rownames(ceb_nor) = frag[,1]






################
################
# gene catagory 
################



########
########
# ?????????
########
########

# get gene row
up_regu = c('SOD1','SOD2','GPX1', 'CAT')

up_regu_row = matrix(NA, nrow = length(up_regu))

for(i in 1:length(up_regu)){
  up_regu_row[i] = grep(up_regu[i], row_name)
}


###########
#Eucalyptus


# r1 is significant and up regulate

euc_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

euc_gcat1 = euc_nor[up_regu_row,] > 1 


colnames(euc_gcat1) = colnames(euc_nor)
rownames(euc_gcat1) = up_regu


# percentage of success

count = length(which(euc_gcat1 == T))

euc_gcat1_per = (count) / (dim(euc_gcat1)[1] * dim(euc_gcat1)[2])





#########
# parsley


# r1 is significant and up regulate

par_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

par_gcat1 = par_nor[up_regu_row,] > 1 


colnames(par_gcat1) = colnames(par_nor)
rownames(par_gcat1) = up_regu


# percentage of success

count = length(which(par_gcat1 == T))

par_gcat1_per = (count) / (dim(par_gcat1)[1] * dim(par_gcat1)[2])







#############
#Black Pepper

# r1 is significant and up regulate

pep_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

pep_gcat1 = pep_nor[up_regu_row,] > 1 


colnames(pep_gcat1) = colnames(pep_nor)
rownames(pep_gcat1) = up_regu


# percentage of success

count = length(which(pep_gcat1 == T))

pep_gcat1_per = (count) / (dim(pep_gcat1)[1] * dim(pep_gcat1)[2])





#########
#Tea Tree

# r1 is significant and up regulate

tea_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

tea_gcat1 = tea_nor[up_regu_row,] > 1 


colnames(tea_gcat1) = colnames(tea_nor)
rownames(tea_gcat1) = up_regu


# percentage of success

count = length(which(tea_gcat1 == T))

tea_gcat1_per = (count) / (dim(tea_gcat1)[1] * dim(tea_gcat1)[2])




#####
#Mint

# r1 is significant and up regulate

mint_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 3) 

mint_gcat1 = mint_nor[up_regu_row,] > 1 


colnames(mint_gcat1) = colnames(mint_nor)
rownames(mint_gcat1) = up_regu


# percentage of success

count = length(which(mint_gcat1 == T))

mint_gcat1_per = (count) / (dim(mint_gcat1)[1] * dim(mint_gcat1)[2])


#############
#Sweet Orange

# r1 is significant and up regulate

ora_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

ora_gcat1 = ora_nor[up_regu_row,] > 1 


colnames(ora_gcat1) = colnames(ora_nor)
rownames(ora_gcat1) = up_regu


# percentage of success

count = length(which(ora_gcat1 == T))

ora_gcat1_per = (count) / (dim(ora_gcat1)[1] * dim(ora_gcat1)[2])


######
#Lemon

# r1 is significant and up regulate

lem_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

lem_gcat1 = lem_nor[up_regu_row,] > 1 


colnames(lem_gcat1) = colnames(lem_nor)
rownames(lem_gcat1) = up_regu


# percentage of success

count = length(which(lem_gcat1 == T))

lem_gcat1_per = (count) / (dim(lem_gcat1)[1] * dim(lem_gcat1)[2])


########
#Cypress

# r1 is significant and up regulate

cyp_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

cyp_gcat1 = cyp_nor[up_regu_row,] > 1 


colnames(cyp_gcat1) = colnames(cyp_nor)
rownames(cyp_gcat1) = up_regu


# percentage of success

count = length(which(cyp_gcat1 == T))

cyp_gcat1_per = (count) / (dim(cyp_gcat1)[1] * dim(cyp_gcat1)[2])



#####
#Milk


# r1 is significant and up regulate

milk_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

milk_gcat1 = milk_nor[up_regu_row,] > 1 


colnames(milk_gcat1) = colnames(milk_nor)
rownames(milk_gcat1) = up_regu


# percentage of success

count = length(which(milk_gcat1 == T))

milk_gcat1_per = (count) / (dim(milk_gcat1)[1] * dim(milk_gcat1)[2])


##########
#Melaleuca

# r1 is significant and up regulate

mel_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

mel_gcat1 = mel_nor[up_regu_row,] > 1 


colnames(mel_gcat1) = colnames(mel_nor)
rownames(mel_gcat1) = up_regu


# percentage of success

count = length(which(mel_gcat1 == T))

mel_gcat1_per = (count) / (dim(mel_gcat1)[1] * dim(mel_gcat1)[2])



#########
#Lavender

# r1 is significant and up regulate

lav_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

lav_gcat1 =lav_nor[up_regu_row,] > 1 


colnames(lav_gcat1) = colnames(lav_nor)
rownames(lav_gcat1) = up_regu


# percentage of success

count = length(which(lav_gcat1 == T))

lav_gcat1_per = (count) / (dim(lav_gcat1)[1] * dim(lav_gcat1)[2])




######
#Yilan

# r1 is significant and up regulate

yil_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

yil_gcat1 =yil_nor[up_regu_row,] > 1 


colnames(yil_gcat1) = colnames(yil_nor)
rownames(yil_gcat1) = up_regu


# percentage of success

count = length(which(yil_gcat1 == T))

yil_gcat1_per = (count) / (dim(yil_gcat1)[1] * dim(yil_gcat1)[2])


#########
#Geranium

# r1 is significant and up regulate

ger_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

ger_gcat1 =ger_nor[up_regu_row,] > 1 


colnames(ger_gcat1) = colnames(ger_nor)
rownames(ger_gcat1) = up_regu


# percentage of success

count = length(which(ger_gcat1 == T))

ger_gcat1_per = (count) / (dim(ger_gcat1)[1] * dim(ger_gcat1)[2])


###########
#Grapefruit

gra_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

gra_gcat1 =gra_nor[up_regu_row,] > 1 


colnames(gra_gcat1) = colnames(gra_nor)
rownames(gra_gcat1) = up_regu


# percentage of success

count = length(which(gra_gcat1 == T))

gra_gcat1_per = (count) / (dim(gra_gcat1)[1] * dim(gra_gcat1)[2])




########
#Juniper

jun_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

jun_gcat1 =jun_nor[up_regu_row,] > 1 


colnames(jun_gcat1) = colnames(jun_nor)
rownames(jun_gcat1) = up_regu


# percentage of success

count = length(which(jun_gcat1 == T))

jun_gcat1_per = (count) / (dim(jun_gcat1)[1] * dim(jun_gcat1)[2])



#########
#Marjoram

mar_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

mar_gcat1 =mar_nor[up_regu_row,] > 1 


colnames(mar_gcat1) = colnames(mar_nor)
rownames(mar_gcat1) = up_regu


# percentage of success

count = length(which(mar_gcat1 == T))

mar_gcat1_per = (count) / (dim(mar_gcat1)[1] * dim(mar_gcat1)[2])




###########
#Rose Grass

rose_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

rose_gcat1 =rose_nor[up_regu_row,] > 1 


colnames(rose_gcat1) = colnames(rose_nor)
rownames(rose_gcat1) = up_regu


# percentage of success

count = length(which(rose_gcat1 == T))

rose_gcat1_per = (count) / (dim(rose_gcat1)[1] * dim(rose_gcat1)[2])



######
#ceber

ceb_gcat1 = matrix(NA, nrow = length(up_regu), ncol = 4) 

ceb_gcat1 = ceb_nor[up_regu_row,] > 1 


colnames(ceb_gcat1) = colnames(ceb_nor)
rownames(ceb_gcat1) = up_regu


# percentage of success

count = length(which(ceb_gcat1 == T))

ceb_gcat1_per = (count) / (dim(ceb_gcat1)[1] * dim(ceb_gcat1)[2])



# plot Anti-Oxidation for all fragrance

frag_name = c('Eucalyptus', 'Parsley', 'Black Pepper', 'Tea Tree', 
              'Mint', 'Orange', 'Lemon', 'Cypress', 'Milk',
              'Melaleuca', 'Lavender', 'Yilan', 'Geranium', 'Grapefruit',
              'Juniper', 'Marjoram', 'Rose Grass', 'Ceber')

gcat1 = c(euc_gcat1_per, par_gcat1_per, pep_gcat1_per, tea_gcat1_per, 
          mint_gcat1_per, ora_gcat1_per, lem_gcat1_per, cyp_gcat1_per,
          milk_gcat1_per, mel_gcat1_per, lav_gcat1_per, yil_gcat1_per,
          ger_gcat1_per, gra_gcat1_per, jun_gcat1_per, mar_gcat1_per,
          rose_gcat1_per, ceb_gcat1_per)*100

ggplot() +
  geom_bar(aes(x = frag_name, weight = gcat1), 
           fill = c('#F5B7B1', '#AED6F1', '#ABEBC6', '#F9E79F', '#7D3C98',
                    '#45B39D', '#F5B041', '#AF7AC5', '#27AE60', '#EC7063',
                    '#3498DB', '#F7DC6F', '#76D7C4', '#D2B4DE', '#A9DFBF',
                    '#B2BABB', '#E74C3C', '#2980B9')) +
  ggtitle('Anti-Oxidation') +
  xlab('Fragrance') +
  ylab('%') +
  theme(plot.title = element_text(hjust = 0.5))










#####
#####
#??????
#####
#####



# get gene row
up_regu = c('CCT2', 'CCT5', 'CCT6A', 'CCT7', 'CCT8', 
            'Pink1', 'PRKN', 'Atg1', 'Atg8', 'SIRT1', 
            'FOXO', 'NADSYN', 'MRPS5', 'Ubl-5', 'SOD3')

up_regu_row = matrix(NA, nrow = length(up_regu))


for(i in 1:length(up_regu)){
  up_regu_row[i] = grep(up_regu[i], row_name)
}



# down regulate

down_regu = c('PARP1', 'PARP2')


down_regu_row = matrix(NA, nrow = length(down_regu))

for(i in 1:length(down_regu)){
  down_regu_row[i] = grep(down_regu[i], row_name)
}




###########
#Eucalyptus


# r1 is significant and up regulate

euc_gcat2.u = euc_nor[up_regu_row,] > 1 
euc_gcat2.d = euc_nor[down_regu_row,] < 1

euc_gcat2 = rbind(euc_gcat2.u, euc_gcat2.d)

colnames(euc_gcat2) = colnames(euc_nor)
rownames(euc_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(euc_gcat2 == T))

euc_gcat2_per = (count) / (dim(euc_gcat2)[1] * dim(euc_gcat2)[2])





#########
# parsley


par_gcat2.u = par_nor[up_regu_row,] > 1 
par_gcat2.d = par_nor[down_regu_row,] < 1

par_gcat2 = rbind(par_gcat2.u, par_gcat2.d)

colnames(par_gcat2) = colnames(par_nor)
rownames(par_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(par_gcat2 == T))

par_gcat2_per = (count) / (dim(par_gcat2)[1] * dim(par_gcat2)[2])






#############
#Black Pepper

pep_gcat2.u = pep_nor[up_regu_row,] > 1 
pep_gcat2.d = pep_nor[down_regu_row,] < 1

pep_gcat2 = rbind(pep_gcat2.u, pep_gcat2.d)

colnames(pep_gcat2) = colnames(pep_nor)
rownames(pep_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(pep_gcat2 == T))

pep_gcat2_per = (count) / (dim(pep_gcat2)[1] * dim(pep_gcat2)[2])




#########
#Tea Tree

tea_gcat2.u = tea_nor[up_regu_row,] > 1 
tea_gcat2.d = tea_nor[down_regu_row,] < 1

tea_gcat2 = rbind(tea_gcat2.u, tea_gcat2.d)

colnames(tea_gcat2) = colnames(tea_nor)
rownames(tea_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(tea_gcat2 == T))

tea_gcat2_per = (count) / (dim(tea_gcat2)[1] * dim(tea_gcat2)[2])



#####
#Mint

mint_gcat2.u = mint_nor[up_regu_row,] > 1 
mint_gcat2.d = mint_nor[down_regu_row,] < 1

mint_gcat2 = rbind(mint_gcat2.u, mint_gcat2.d)

colnames(mint_gcat2) = colnames(mint_nor)
rownames(mint_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(mint_gcat2 == T))

mint_gcat2_per = (count) / (dim(mint_gcat2)[1] * dim(mint_gcat2)[2])




#############
#Sweet Orange

ora_gcat2.u = ora_nor[up_regu_row,] > 1 
ora_gcat2.d = ora_nor[down_regu_row,] < 1

ora_gcat2 = rbind(ora_gcat2.u, ora_gcat2.d)

colnames(ora_gcat2) = colnames(ora_nor)
rownames(ora_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(ora_gcat2 == T))

ora_gcat2_per = (count) / (dim(ora_gcat2)[1] * dim(ora_gcat2)[2])






######
#Lemon

lem_gcat2.u = lem_nor[up_regu_row,] > 1 
lem_gcat2.d = lem_nor[down_regu_row,] < 1

lem_gcat2 = rbind(lem_gcat2.u, lem_gcat2.d)

colnames(lem_gcat2) = colnames(lem_nor)
rownames(lem_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(lem_gcat2 == T))

lem_gcat2_per = (count) / (dim(lem_gcat2)[1] * dim(lem_gcat2)[2])







########
#Cypress

cyp_gcat2.u = cyp_nor[up_regu_row,] > 1 
cyp_gcat2.d = cyp_nor[down_regu_row,] < 1

cyp_gcat2 = rbind(cyp_gcat2.u, cyp_gcat2.d)

colnames(cyp_gcat2) = colnames(cyp_nor)
rownames(cyp_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(cyp_gcat2 == T))

cyp_gcat2_per = (count) / (dim(cyp_gcat2)[1] * dim(cyp_gcat2)[2])






#####
#Milk

milk_gcat2.u = milk_nor[up_regu_row,] > 1 
milk_gcat2.d = milk_nor[down_regu_row,] < 1

milk_gcat2 = rbind(milk_gcat2.u, milk_gcat2.d)

colnames(milk_gcat2) = colnames(milk_nor)
rownames(milk_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(milk_gcat2 == T))

milk_gcat2_per = (count) / (dim(milk_gcat2)[1] * dim(milk_gcat2)[2])




##########
#Melaleuca

mel_gcat2.u = mel_nor[up_regu_row,] > 1 
mel_gcat2.d = mel_nor[down_regu_row,] < 1

mel_gcat2 = rbind(mel_gcat2.u, mel_gcat2.d)

colnames(mel_gcat2) = colnames(mel_nor)
rownames(mel_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(mel_gcat2 == T))

mel_gcat2_per = (count) / (dim(mel_gcat2)[1] * dim(mel_gcat2)[2])




#########
#Lavender

lav_gcat2.u = lav_nor[up_regu_row,] > 1 
lav_gcat2.d = lav_nor[down_regu_row,] < 1

lav_gcat2 = rbind(lav_gcat2.u, lav_gcat2.d)

colnames(lav_gcat2) = colnames(lav_nor)
rownames(lav_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(lav_gcat2 == T))

lav_gcat2_per = (count) / (dim(lav_gcat2)[1] * dim(lav_gcat2)[2])




######
#Yilan

yil_gcat2.u = yil_nor[up_regu_row,] > 1 
yil_gcat2.d = yil_nor[down_regu_row,] < 1

yil_gcat2 = rbind(yil_gcat2.u, yil_gcat2.d)

colnames(yil_gcat2) = colnames(yil_nor)
rownames(yil_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(yil_gcat2 == T))

yil_gcat2_per = (count) / (dim(yil_gcat2)[1] * dim(yil_gcat2)[2])






#########
#Geranium

ger_gcat2.u = ger_nor[up_regu_row,] > 1 
ger_gcat2.d = ger_nor[down_regu_row,] < 1

ger_gcat2 = rbind(ger_gcat2.u, ger_gcat2.d)

colnames(ger_gcat2) = colnames(ger_nor)
rownames(ger_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(ger_gcat2 == T))

ger_gcat2_per = (count) / (dim(ger_gcat2)[1] * dim(ger_gcat2)[2])





###########
#Grapefruit

gra_gcat2.u = gra_nor[up_regu_row,] > 1 
gra_gcat2.d = gra_nor[down_regu_row,] < 1

gra_gcat2 = rbind(gra_gcat2.u, gra_gcat2.d)

colnames(gra_gcat2) = colnames(gra_nor)
rownames(gra_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(gra_gcat2 == T))

gra_gcat2_per = (count) / (dim(gra_gcat2)[1] * dim(gra_gcat2)[2])




########
#Juniper

jun_gcat2.u = jun_nor[up_regu_row,] > 1 
jun_gcat2.d = jun_nor[down_regu_row,] < 1

jun_gcat2 = rbind(jun_gcat2.u, jun_gcat2.d)

colnames(jun_gcat2) = colnames(jun_nor)
rownames(jun_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(jun_gcat2 == T))

jun_gcat2_per = (count) / (dim(jun_gcat2)[1] * dim(jun_gcat2)[2])




#########
#Marjoram

mar_gcat2.u = mar_nor[up_regu_row,] > 1 
mar_gcat2.d = mar_nor[down_regu_row,] < 1

mar_gcat2 = rbind(mar_gcat2.u, mar_gcat2.d)

colnames(mar_gcat2) = colnames(mar_nor)
rownames(mar_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(mar_gcat2 == T))

mar_gcat2_per = (count) / (dim(mar_gcat2)[1] * dim(mar_gcat2)[2])





###########
#Rose Grass

rose_gcat2.u = rose_nor[up_regu_row,] > 1 
rose_gcat2.d = rose_nor[down_regu_row,] < 1

rose_gcat2 = rbind(rose_gcat2.u, rose_gcat2.d)

colnames(rose_gcat2) = colnames(rose_nor)
rownames(rose_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(rose_gcat2 == T))

rose_gcat2_per = (count) / (dim(rose_gcat2)[1] * dim(rose_gcat2)[2])




######
#ceber

ceb_gcat2.u = ceb_nor[up_regu_row,] > 1 
ceb_gcat2.d = ceb_nor[down_regu_row,] < 1

ceb_gcat2 = rbind(ceb_gcat2.u, ceb_gcat2.d)

colnames(ceb_gcat2) = colnames(ceb_nor)
rownames(ceb_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(ceb_gcat2 == T))

ceb_gcat2_per = (count) / (dim(ceb_gcat2)[1] * dim(ceb_gcat2)[2])




# plot Anti-Oxidation for all fragrance

frag_name = c('Eucalyptus', 'Parsley', 'Black Pepper', 'Tea Tree', 
              'Mint', 'Orange', 'Lemon', 'Cypress', 'Milk',
              'Melaleuca', 'Lavender', 'Yilan', 'Geranium', 'Grapefruit',
              'Juniper', 'Marjoram', 'Rose Grass', 'Ceber')

gcat2 = c(euc_gcat2_per, par_gcat2_per, pep_gcat2_per, tea_gcat2_per, 
          mint_gcat2_per, ora_gcat2_per, lem_gcat2_per, cyp_gcat2_per,
          milk_gcat2_per, mel_gcat2_per, lav_gcat2_per, yil_gcat2_per,
          ger_gcat2_per, gra_gcat2_per, jun_gcat2_per, mar_gcat2_per,
          rose_gcat2_per, ceb_gcat2_per)*100

ggplot() +
  geom_bar(aes(x = frag_name, weight = gcat2), 
           fill = c('#F5B7B1', '#AED6F1', '#ABEBC6', '#F9E79F', '#7D3C98',
                    '#45B39D', '#F5B041', '#AF7AC5', '#27AE60', '#EC7063',
                    '#3498DB', '#F7DC6F', '#76D7C4', '#D2B4DE', '#A9DFBF',
                    '#B2BABB', '#E74C3C', '#2980B9')) +
  ggtitle('Anti-Aging') +
  xlab('Fragrance') +
  ylab('%') +
  theme(plot.title = element_text(hjust = 0.5))













##########
##########
# ????????????
##########
##########

# get gene row
down_regu = c('CD40','ERBB2','LIF', 'MALT1', 'NCK1', 'PAF1')

down_regu_row = matrix(NA, nrow = length(down_regu))

for(i in 1:length(down_regu)){
  down_regu_row[i] = grep(down_regu[i], row_name)
}


###########
#Eucalyptus


# r1 is significant and up regulate

euc_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

euc_gcat1 = euc_nor[down_regu_row,] < 1 


colnames(euc_gcat1) = colnames(euc_nor)
rownames(euc_gcat1) = down_regu


# percentage of success

count = length(which(euc_gcat1 == T))

euc_gcat1_per = (count) / (dim(euc_gcat1)[1] * dim(euc_gcat1)[2])





#########
# parsley


# r1 is significant and up regulate

par_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

par_gcat1 = par_nor[down_regu_row,] < 1 


colnames(par_gcat1) = colnames(par_nor)
rownames(par_gcat1) = down_regu


# percentage of success

count = length(which(par_gcat1 == T))

par_gcat1_per = (count) / (dim(par_gcat1)[1] * dim(par_gcat1)[2])







#############
#Black Pepper

# r1 is significant and up regulate

pep_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

pep_gcat1 = pep_nor[down_regu_row,] < 1 


colnames(pep_gcat1) = colnames(pep_nor)
rownames(pep_gcat1) = down_regu


# percentage of success

count = length(which(pep_gcat1 == T))

pep_gcat1_per = (count) / (dim(pep_gcat1)[1] * dim(pep_gcat1)[2])





#########
#Tea Tree

# r1 is significant and up regulate

tea_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

tea_gcat1 = tea_nor[down_regu_row,] < 1 


colnames(tea_gcat1) = colnames(tea_nor)
rownames(tea_gcat1) = down_regu


# percentage of success

count = length(which(tea_gcat1 == T))

tea_gcat1_per = (count) / (dim(tea_gcat1)[1] * dim(tea_gcat1)[2])




#####
#Mint

# r1 is significant and up regulate

mint_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 3) 

mint_gcat1 = mint_nor[down_regu_row,] < 1 


colnames(mint_gcat1) = colnames(mint_nor)
rownames(mint_gcat1) = down_regu


# percentage of success

count = length(which(mint_gcat1 == T))

mint_gcat1_per = (count) / (dim(mint_gcat1)[1] * dim(mint_gcat1)[2])


#############
#Sweet Orange

# r1 is significant and up regulate

ora_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ora_gcat1 = ora_nor[down_regu_row,] < 1 


colnames(ora_gcat1) = colnames(ora_nor)
rownames(ora_gcat1) = down_regu


# percentage of success

count = length(which(ora_gcat1 == T))

ora_gcat1_per = (count) / (dim(ora_gcat1)[1] * dim(ora_gcat1)[2])


######
#Lemon

# r1 is significant and up regulate

lem_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

lem_gcat1 = lem_nor[down_regu_row,] < 1 


colnames(lem_gcat1) = colnames(lem_nor)
rownames(lem_gcat1) = down_regu


# percentage of success

count = length(which(lem_gcat1 == T))

lem_gcat1_per = (count) / (dim(lem_gcat1)[1] * dim(lem_gcat1)[2])


########
#Cypress

# r1 is significant and up regulate

cyp_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

cyp_gcat1 = cyp_nor[down_regu_row,] < 1 


colnames(cyp_gcat1) = colnames(cyp_nor)
rownames(cyp_gcat1) = down_regu


# percentage of success

count = length(which(cyp_gcat1 == T))

cyp_gcat1_per = (count) / (dim(cyp_gcat1)[1] * dim(cyp_gcat1)[2])



#####
#Milk


# r1 is significant and up regulate

milk_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

milk_gcat1 = milk_nor[down_regu_row,] < 1 


colnames(milk_gcat1) = colnames(milk_nor)
rownames(milk_gcat1) = down_regu


# percentage of success

count = length(which(milk_gcat1 == T))

milk_gcat1_per = (count) / (dim(milk_gcat1)[1] * dim(milk_gcat1)[2])


##########
#Melaleuca

# r1 is significant and up regulate

mel_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

mel_gcat1 = mel_nor[down_regu_row,] < 1 


colnames(mel_gcat1) = colnames(mel_nor)
rownames(mel_gcat1) = down_regu


# percentage of success

count = length(which(mel_gcat1 == T))

mel_gcat1_per = (count) / (dim(mel_gcat1)[1] * dim(mel_gcat1)[2])



#########
#Lavender

# r1 is significant and up regulate

lav_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

lav_gcat1 =lav_nor[down_regu_row,] < 1 


colnames(lav_gcat1) = colnames(lav_nor)
rownames(lav_gcat1) = down_regu


# percentage of success

count = length(which(lav_gcat1 == T))

lav_gcat1_per = (count) / (dim(lav_gcat1)[1] * dim(lav_gcat1)[2])




######
#Yilan

# r1 is significant and up regulate

yil_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

yil_gcat1 =yil_nor[down_regu_row,] < 1 


colnames(yil_gcat1) = colnames(yil_nor)
rownames(yil_gcat1) = down_regu


# percentage of success

count = length(which(yil_gcat1 == T))

yil_gcat1_per = (count) / (dim(yil_gcat1)[1] * dim(yil_gcat1)[2])


#########
#Geranium

# r1 is significant and up regulate

ger_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ger_gcat1 =ger_nor[down_regu_row,] < 1 


colnames(ger_gcat1) = colnames(ger_nor)
rownames(ger_gcat1) = down_regu


# percentage of success

count = length(which(ger_gcat1 == T))

ger_gcat1_per = (count) / (dim(ger_gcat1)[1] * dim(ger_gcat1)[2])


###########
#Grapefruit

gra_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

gra_gcat1 =gra_nor[down_regu_row,] < 1 


colnames(gra_gcat1) = colnames(gra_nor)
rownames(gra_gcat1) = down_regu


# percentage of success

count = length(which(gra_gcat1 == T))

gra_gcat1_per = (count) / (dim(gra_gcat1)[1] * dim(gra_gcat1)[2])




########
#Juniper

jun_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

jun_gcat1 =jun_nor[down_regu_row,] < 1 


colnames(jun_gcat1) = colnames(jun_nor)
rownames(jun_gcat1) = down_regu


# percentage of success

count = length(which(jun_gcat1 == T))

jun_gcat1_per = (count) / (dim(jun_gcat1)[1] * dim(jun_gcat1)[2])



#########
#Marjoram

mar_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

mar_gcat1 =mar_nor[down_regu_row,] < 1 


colnames(mar_gcat1) = colnames(mar_nor)
rownames(mar_gcat1) = down_regu


# percentage of success

count = length(which(mar_gcat1 == T))

mar_gcat1_per = (count) / (dim(mar_gcat1)[1] * dim(mar_gcat1)[2])




###########
#Rose Grass

rose_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

rose_gcat1 =rose_nor[down_regu_row,] < 1 


colnames(rose_gcat1) = colnames(rose_nor)
rownames(rose_gcat1) = down_regu


# percentage of success

count = length(which(rose_gcat1 == T))

rose_gcat1_per = (count) / (dim(rose_gcat1)[1] * dim(rose_gcat1)[2])



######
#ceber

ceb_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ceb_gcat1 = ceb_nor[down_regu_row,] < 1 


colnames(ceb_gcat1) = colnames(ceb_nor)
rownames(ceb_gcat1) = down_regu


# percentage of success

count = length(which(ceb_gcat1 == T))

ceb_gcat1_per = (count) / (dim(ceb_gcat1)[1] * dim(ceb_gcat1)[2])



# plot Anti-Oxidation for all fragrance

frag_name = c('Eucalyptus', 'Parsley', 'Black Pepper', 'Tea Tree', 
              'Mint', 'Orange', 'Lemon', 'Cypress', 'Milk',
              'Melaleuca', 'Lavender', 'Yilan', 'Geranium', 'Grapefruit',
              'Juniper', 'Marjoram', 'Rose Grass', 'Ceber')

gcat1 = c(euc_gcat1_per, par_gcat1_per, pep_gcat1_per, tea_gcat1_per, 
          mint_gcat1_per, ora_gcat1_per, lem_gcat1_per, cyp_gcat1_per,
          milk_gcat1_per, mel_gcat1_per, lav_gcat1_per, yil_gcat1_per,
          ger_gcat1_per, gra_gcat1_per, jun_gcat1_per, mar_gcat1_per,
          rose_gcat1_per, ceb_gcat1_per)*100

ggplot() +
  geom_bar(aes(x = frag_name, weight = gcat1), 
           fill = c('#F5B7B1', '#AED6F1', '#ABEBC6', '#F9E79F', '#7D3C98',
                    '#45B39D', '#F5B041', '#AF7AC5', '#27AE60', '#EC7063',
                    '#3498DB', '#F7DC6F', '#76D7C4', '#D2B4DE', '#A9DFBF',
                    '#B2BABB', '#E74C3C', '#2980B9')) +
  ggtitle('Antigenic reaction') +
  xlab('Fragrance') +
  ylab('%') +
  theme(plot.title = element_text(hjust = 0.5))











####################
####################
# ???????????????????????????
####################
####################

# get gene row
down_regu = c('DYNLL2','GRK5','PSMD4', 'RDH10', 'RELB', 'SCARF1', 'TNFSF14')

down_regu_row = matrix(NA, nrow = length(down_regu))

for(i in 1:length(down_regu)){
  down_regu_row[i] = grep(down_regu[i], row_name)
}


###########
#Eucalyptus


# r1 is significant and up regulate

euc_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

euc_gcat1 = euc_nor[down_regu_row,] < 1 


colnames(euc_gcat1) = colnames(euc_nor)
rownames(euc_gcat1) = down_regu


# percentage of success

count = length(which(euc_gcat1 == T))

euc_gcat1_per = (count) / (dim(euc_gcat1)[1] * dim(euc_gcat1)[2])





#########
# parsley


# r1 is significant and up regulate

par_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

par_gcat1 = par_nor[down_regu_row,] < 1 


colnames(par_gcat1) = colnames(par_nor)
rownames(par_gcat1) = down_regu


# percentage of success

count = length(which(par_gcat1 == T))

par_gcat1_per = (count) / (dim(par_gcat1)[1] * dim(par_gcat1)[2])







#############
#Black Pepper

# r1 is significant and up regulate

pep_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

pep_gcat1 = pep_nor[down_regu_row,] < 1 


colnames(pep_gcat1) = colnames(pep_nor)
rownames(pep_gcat1) = down_regu


# percentage of success

count = length(which(pep_gcat1 == T))

pep_gcat1_per = (count) / (dim(pep_gcat1)[1] * dim(pep_gcat1)[2])





#########
#Tea Tree

# r1 is significant and up regulate

tea_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

tea_gcat1 = tea_nor[down_regu_row,] < 1 


colnames(tea_gcat1) = colnames(tea_nor)
rownames(tea_gcat1) = down_regu


# percentage of success

count = length(which(tea_gcat1 == T))

tea_gcat1_per = (count) / (dim(tea_gcat1)[1] * dim(tea_gcat1)[2])




#####
#Mint

# r1 is significant and up regulate

mint_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 3) 

mint_gcat1 = mint_nor[down_regu_row,] < 1 


colnames(mint_gcat1) = colnames(mint_nor)
rownames(mint_gcat1) = down_regu


# percentage of success

count = length(which(mint_gcat1 == T))

mint_gcat1_per = (count) / (dim(mint_gcat1)[1] * dim(mint_gcat1)[2])


#############
#Sweet Orange

# r1 is significant and up regulate

ora_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ora_gcat1 = ora_nor[down_regu_row,] < 1 


colnames(ora_gcat1) = colnames(ora_nor)
rownames(ora_gcat1) = down_regu


# percentage of success

count = length(which(ora_gcat1 == T))

ora_gcat1_per = (count) / (dim(ora_gcat1)[1] * dim(ora_gcat1)[2])


######
#Lemon

# r1 is significant and up regulate

lem_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

lem_gcat1 = lem_nor[down_regu_row,] < 1 


colnames(lem_gcat1) = colnames(lem_nor)
rownames(lem_gcat1) = down_regu


# percentage of success

count = length(which(lem_gcat1 == T))

lem_gcat1_per = (count) / (dim(lem_gcat1)[1] * dim(lem_gcat1)[2])


########
#Cypress

# r1 is significant and up regulate

cyp_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

cyp_gcat1 = cyp_nor[down_regu_row,] < 1 


colnames(cyp_gcat1) = colnames(cyp_nor)
rownames(cyp_gcat1) = down_regu


# percentage of success

count = length(which(cyp_gcat1 == T))

cyp_gcat1_per = (count) / (dim(cyp_gcat1)[1] * dim(cyp_gcat1)[2])



#####
#Milk


# r1 is significant and up regulate

milk_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

milk_gcat1 = milk_nor[down_regu_row,] < 1 


colnames(milk_gcat1) = colnames(milk_nor)
rownames(milk_gcat1) = down_regu


# percentage of success

count = length(which(milk_gcat1 == T))

milk_gcat1_per = (count) / (dim(milk_gcat1)[1] * dim(milk_gcat1)[2])


##########
#Melaleuca

# r1 is significant and up regulate

mel_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

mel_gcat1 = mel_nor[down_regu_row,] < 1 


colnames(mel_gcat1) = colnames(mel_nor)
rownames(mel_gcat1) = down_regu


# percentage of success

count = length(which(mel_gcat1 == T))

mel_gcat1_per = (count) / (dim(mel_gcat1)[1] * dim(mel_gcat1)[2])



#########
#Lavender

# r1 is significant and up regulate

lav_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

lav_gcat1 =lav_nor[down_regu_row,] < 1 


colnames(lav_gcat1) = colnames(lav_nor)
rownames(lav_gcat1) = down_regu


# percentage of success

count = length(which(lav_gcat1 == T))

lav_gcat1_per = (count) / (dim(lav_gcat1)[1] * dim(lav_gcat1)[2])




######
#Yilan

# r1 is significant and up regulate

yil_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

yil_gcat1 =yil_nor[down_regu_row,] < 1 


colnames(yil_gcat1) = colnames(yil_nor)
rownames(yil_gcat1) = down_regu


# percentage of success

count = length(which(yil_gcat1 == T))

yil_gcat1_per = (count) / (dim(yil_gcat1)[1] * dim(yil_gcat1)[2])


#########
#Geranium

# r1 is significant and up regulate

ger_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ger_gcat1 =ger_nor[down_regu_row,] < 1 


colnames(ger_gcat1) = colnames(ger_nor)
rownames(ger_gcat1) = down_regu


# percentage of success

count = length(which(ger_gcat1 == T))

ger_gcat1_per = (count) / (dim(ger_gcat1)[1] * dim(ger_gcat1)[2])


###########
#Grapefruit

gra_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

gra_gcat1 =gra_nor[down_regu_row,] < 1 


colnames(gra_gcat1) = colnames(gra_nor)
rownames(gra_gcat1) = down_regu


# percentage of success

count = length(which(gra_gcat1 == T))

gra_gcat1_per = (count) / (dim(gra_gcat1)[1] * dim(gra_gcat1)[2])




########
#Juniper

jun_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

jun_gcat1 =jun_nor[down_regu_row,] < 1 


colnames(jun_gcat1) = colnames(jun_nor)
rownames(jun_gcat1) = down_regu


# percentage of success

count = length(which(jun_gcat1 == T))

jun_gcat1_per = (count) / (dim(jun_gcat1)[1] * dim(jun_gcat1)[2])



#########
#Marjoram

mar_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

mar_gcat1 =mar_nor[down_regu_row,] < 1 


colnames(mar_gcat1) = colnames(mar_nor)
rownames(mar_gcat1) = down_regu


# percentage of success

count = length(which(mar_gcat1 == T))

mar_gcat1_per = (count) / (dim(mar_gcat1)[1] * dim(mar_gcat1)[2])




###########
#Rose Grass

rose_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

rose_gcat1 =rose_nor[down_regu_row,] < 1 


colnames(rose_gcat1) = colnames(rose_nor)
rownames(rose_gcat1) = down_regu


# percentage of success

count = length(which(rose_gcat1 == T))

rose_gcat1_per = (count) / (dim(rose_gcat1)[1] * dim(rose_gcat1)[2])



######
#ceber

ceb_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ceb_gcat1 = ceb_nor[down_regu_row,] < 1 


colnames(ceb_gcat1) = colnames(ceb_nor)
rownames(ceb_gcat1) = down_regu


# percentage of success

count = length(which(ceb_gcat1 == T))

ceb_gcat1_per = (count) / (dim(ceb_gcat1)[1] * dim(ceb_gcat1)[2])



# plot Anti-Oxidation for all fragrance

frag_name = c('Eucalyptus', 'Parsley', 'Black Pepper', 'Tea Tree', 
              'Mint', 'Orange', 'Lemon', 'Cypress', 'Milk',
              'Melaleuca', 'Lavender', 'Yilan', 'Geranium', 'Grapefruit',
              'Juniper', 'Marjoram', 'Rose Grass', 'Ceber')

gcat1 = c(euc_gcat1_per, par_gcat1_per, pep_gcat1_per, tea_gcat1_per, 
          mint_gcat1_per, ora_gcat1_per, lem_gcat1_per, cyp_gcat1_per,
          milk_gcat1_per, mel_gcat1_per, lav_gcat1_per, yil_gcat1_per,
          ger_gcat1_per, gra_gcat1_per, jun_gcat1_per, mar_gcat1_per,
          rose_gcat1_per, ceb_gcat1_per)*100

ggplot() +
  geom_bar(aes(x = frag_name, weight = gcat1), 
           fill = c('#F5B7B1', '#AED6F1', '#ABEBC6', '#F9E79F', '#7D3C98',
                    '#45B39D', '#F5B041', '#AF7AC5', '#27AE60', '#EC7063',
                    '#3498DB', '#F7DC6F', '#76D7C4', '#D2B4DE', '#A9DFBF',
                    '#B2BABB', '#E74C3C', '#2980B9')) +
  ggtitle('Promote immune activation and differentiation') +
  xlab('Fragrance') +
  ylab('%') +
  theme(plot.title = element_text(hjust = 0.5))











##########
##########
# ????????????
##########
##########

# get gene row
down_regu = c('ABR','IL13','IL4R', 'IL5RA', 'RELA')

down_regu_row = matrix(NA, nrow = length(down_regu))

for(i in 1:length(down_regu)){
  down_regu_row[i] = grep(down_regu[i], row_name)
}


###########
#Eucalyptus


# r1 is significant and up regulate

euc_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

euc_gcat1 = euc_nor[down_regu_row,] < 1 


colnames(euc_gcat1) = colnames(euc_nor)
rownames(euc_gcat1) = down_regu


# percentage of success

count = length(which(euc_gcat1 == T))

euc_gcat1_per = (count) / (dim(euc_gcat1)[1] * dim(euc_gcat1)[2])





#########
# parsley


# r1 is significant and up regulate

par_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

par_gcat1 = par_nor[down_regu_row,] < 1 


colnames(par_gcat1) = colnames(par_nor)
rownames(par_gcat1) = down_regu


# percentage of success

count = length(which(par_gcat1 == T))

par_gcat1_per = (count) / (dim(par_gcat1)[1] * dim(par_gcat1)[2])







#############
#Black Pepper

# r1 is significant and up regulate

pep_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

pep_gcat1 = pep_nor[down_regu_row,] < 1 


colnames(pep_gcat1) = colnames(pep_nor)
rownames(pep_gcat1) = down_regu


# percentage of success

count = length(which(pep_gcat1 == T))

pep_gcat1_per = (count) / (dim(pep_gcat1)[1] * dim(pep_gcat1)[2])





#########
#Tea Tree

# r1 is significant and up regulate

tea_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

tea_gcat1 = tea_nor[down_regu_row,] < 1 


colnames(tea_gcat1) = colnames(tea_nor)
rownames(tea_gcat1) = down_regu


# percentage of success

count = length(which(tea_gcat1 == T))

tea_gcat1_per = (count) / (dim(tea_gcat1)[1] * dim(tea_gcat1)[2])




#####
#Mint

# r1 is significant and up regulate

mint_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 3) 

mint_gcat1 = mint_nor[down_regu_row,] < 1 


colnames(mint_gcat1) = colnames(mint_nor)
rownames(mint_gcat1) = down_regu


# percentage of success

count = length(which(mint_gcat1 == T))

mint_gcat1_per = (count) / (dim(mint_gcat1)[1] * dim(mint_gcat1)[2])


#############
#Sweet Orange

# r1 is significant and up regulate

ora_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ora_gcat1 = ora_nor[down_regu_row,] < 1 


colnames(ora_gcat1) = colnames(ora_nor)
rownames(ora_gcat1) = down_regu


# percentage of success

count = length(which(ora_gcat1 == T))

ora_gcat1_per = (count) / (dim(ora_gcat1)[1] * dim(ora_gcat1)[2])


######
#Lemon

# r1 is significant and up regulate

lem_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

lem_gcat1 = lem_nor[down_regu_row,] < 1 


colnames(lem_gcat1) = colnames(lem_nor)
rownames(lem_gcat1) = down_regu


# percentage of success

count = length(which(lem_gcat1 == T))

lem_gcat1_per = (count) / (dim(lem_gcat1)[1] * dim(lem_gcat1)[2])


########
#Cypress

# r1 is significant and up regulate

cyp_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

cyp_gcat1 = cyp_nor[down_regu_row,] < 1 


colnames(cyp_gcat1) = colnames(cyp_nor)
rownames(cyp_gcat1) = down_regu


# percentage of success

count = length(which(cyp_gcat1 == T))

cyp_gcat1_per = (count) / (dim(cyp_gcat1)[1] * dim(cyp_gcat1)[2])



#####
#Milk


# r1 is significant and up regulate

milk_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

milk_gcat1 = milk_nor[down_regu_row,] < 1 


colnames(milk_gcat1) = colnames(milk_nor)
rownames(milk_gcat1) = down_regu


# percentage of success

count = length(which(milk_gcat1 == T))

milk_gcat1_per = (count) / (dim(milk_gcat1)[1] * dim(milk_gcat1)[2])


##########
#Melaleuca

# r1 is significant and up regulate

mel_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

mel_gcat1 = mel_nor[down_regu_row,] < 1 


colnames(mel_gcat1) = colnames(mel_nor)
rownames(mel_gcat1) = down_regu


# percentage of success

count = length(which(mel_gcat1 == T))

mel_gcat1_per = (count) / (dim(mel_gcat1)[1] * dim(mel_gcat1)[2])



#########
#Lavender

# r1 is significant and up regulate

lav_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

lav_gcat1 =lav_nor[down_regu_row,] < 1 


colnames(lav_gcat1) = colnames(lav_nor)
rownames(lav_gcat1) = down_regu


# percentage of success

count = length(which(lav_gcat1 == T))

lav_gcat1_per = (count) / (dim(lav_gcat1)[1] * dim(lav_gcat1)[2])




######
#Yilan

# r1 is significant and up regulate

yil_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

yil_gcat1 =yil_nor[down_regu_row,] < 1 


colnames(yil_gcat1) = colnames(yil_nor)
rownames(yil_gcat1) = down_regu


# percentage of success

count = length(which(yil_gcat1 == T))

yil_gcat1_per = (count) / (dim(yil_gcat1)[1] * dim(yil_gcat1)[2])


#########
#Geranium

# r1 is significant and up regulate

ger_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ger_gcat1 =ger_nor[down_regu_row,] < 1 


colnames(ger_gcat1) = colnames(ger_nor)
rownames(ger_gcat1) = down_regu


# percentage of success

count = length(which(ger_gcat1 == T))

ger_gcat1_per = (count) / (dim(ger_gcat1)[1] * dim(ger_gcat1)[2])


###########
#Grapefruit

gra_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

gra_gcat1 =gra_nor[down_regu_row,] < 1 


colnames(gra_gcat1) = colnames(gra_nor)
rownames(gra_gcat1) = down_regu


# percentage of success

count = length(which(gra_gcat1 == T))

gra_gcat1_per = (count) / (dim(gra_gcat1)[1] * dim(gra_gcat1)[2])




########
#Juniper

jun_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

jun_gcat1 =jun_nor[down_regu_row,] < 1 


colnames(jun_gcat1) = colnames(jun_nor)
rownames(jun_gcat1) = down_regu


# percentage of success

count = length(which(jun_gcat1 == T))

jun_gcat1_per = (count) / (dim(jun_gcat1)[1] * dim(jun_gcat1)[2])



#########
#Marjoram

mar_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

mar_gcat1 =mar_nor[down_regu_row,] < 1 


colnames(mar_gcat1) = colnames(mar_nor)
rownames(mar_gcat1) = down_regu


# percentage of success

count = length(which(mar_gcat1 == T))

mar_gcat1_per = (count) / (dim(mar_gcat1)[1] * dim(mar_gcat1)[2])




###########
#Rose Grass

rose_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

rose_gcat1 =rose_nor[down_regu_row,] < 1 


colnames(rose_gcat1) = colnames(rose_nor)
rownames(rose_gcat1) = down_regu


# percentage of success

count = length(which(rose_gcat1 == T))

rose_gcat1_per = (count) / (dim(rose_gcat1)[1] * dim(rose_gcat1)[2])



######
#ceber

ceb_gcat1 = matrix(NA, nrow = length(down_regu), ncol = 4) 

ceb_gcat1 = ceb_nor[down_regu_row,] < 1 


colnames(ceb_gcat1) = colnames(ceb_nor)
rownames(ceb_gcat1) = down_regu


# percentage of success

count = length(which(ceb_gcat1 == T))

ceb_gcat1_per = (count) / (dim(ceb_gcat1)[1] * dim(ceb_gcat1)[2])



# plot Anti-Oxidation for all fragrance

frag_name = c('Eucalyptus', 'Parsley', 'Black Pepper', 'Tea Tree', 
              'Mint', 'Orange', 'Lemon', 'Cypress', 'Milk',
              'Melaleuca', 'Lavender', 'Yilan', 'Geranium', 'Grapefruit',
              'Juniper', 'Marjoram', 'Rose Grass', 'Ceber')

gcat1 = c(euc_gcat1_per, par_gcat1_per, pep_gcat1_per, tea_gcat1_per, 
          mint_gcat1_per, ora_gcat1_per, lem_gcat1_per, cyp_gcat1_per,
          milk_gcat1_per, mel_gcat1_per, lav_gcat1_per, yil_gcat1_per,
          ger_gcat1_per, gra_gcat1_per, jun_gcat1_per, mar_gcat1_per,
          rose_gcat1_per, ceb_gcat1_per)*100

ggplot() +
  geom_bar(aes(x = frag_name, weight = gcat1), 
           fill = c('#F5B7B1', '#AED6F1', '#ABEBC6', '#F9E79F', '#7D3C98',
                    '#45B39D', '#F5B041', '#AF7AC5', '#27AE60', '#EC7063',
                    '#3498DB', '#F7DC6F', '#76D7C4', '#D2B4DE', '#A9DFBF',
                    '#B2BABB', '#E74C3C', '#2980B9')) +
  ggtitle('Chronic inflammation') +
  xlab('Fragrance') +
  ylab('%') +
  theme(plot.title = element_text(hjust = 0.5))












#####
#####
#??????
#####
#####



# get gene row
up_regu = c('IL-10', 'TGFB', 'IL4')

up_regu_row = matrix(NA, nrow = length(up_regu))


for(i in 1:length(up_regu)){
  up_regu_row[i] = grep(up_regu[i], row_name)
}



# down regulate

down_regu = c('IL-1B', 'IL-8', 'IL-6', 'IL-18', 'TNF-a', 
              'IL-16', 'IL23', 'IL12A', 'IFNG', 'IL3')


down_regu_row = matrix(NA, nrow = length(down_regu))

for(i in 1:length(down_regu)){
  down_regu_row[i] = grep(down_regu[i], row_name)
}




###########
#Eucalyptus


# r1 is significant and up regulate

euc_gcat2.u = euc_nor[up_regu_row,] > 1 
euc_gcat2.d = euc_nor[down_regu_row,] < 1

euc_gcat2 = rbind(euc_gcat2.u, euc_gcat2.d)

colnames(euc_gcat2) = colnames(euc_nor)
rownames(euc_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(euc_gcat2 == T))

euc_gcat2_per = (count) / (dim(euc_gcat2)[1] * dim(euc_gcat2)[2])





#########
# parsley


par_gcat2.u = par_nor[up_regu_row,] > 1 
par_gcat2.d = par_nor[down_regu_row,] < 1

par_gcat2 = rbind(par_gcat2.u, par_gcat2.d)

colnames(par_gcat2) = colnames(par_nor)
rownames(par_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(par_gcat2 == T))

par_gcat2_per = (count) / (dim(par_gcat2)[1] * dim(par_gcat2)[2])






#############
#Black Pepper

pep_gcat2.u = pep_nor[up_regu_row,] > 1 
pep_gcat2.d = pep_nor[down_regu_row,] < 1

pep_gcat2 = rbind(pep_gcat2.u, pep_gcat2.d)

colnames(pep_gcat2) = colnames(pep_nor)
rownames(pep_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(pep_gcat2 == T))

pep_gcat2_per = (count) / (dim(pep_gcat2)[1] * dim(pep_gcat2)[2])




#########
#Tea Tree

tea_gcat2.u = tea_nor[up_regu_row,] > 1 
tea_gcat2.d = tea_nor[down_regu_row,] < 1

tea_gcat2 = rbind(tea_gcat2.u, tea_gcat2.d)

colnames(tea_gcat2) = colnames(tea_nor)
rownames(tea_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(tea_gcat2 == T))

tea_gcat2_per = (count) / (dim(tea_gcat2)[1] * dim(tea_gcat2)[2])



#####
#Mint

mint_gcat2.u = mint_nor[up_regu_row,] > 1 
mint_gcat2.d = mint_nor[down_regu_row,] < 1

mint_gcat2 = rbind(mint_gcat2.u, mint_gcat2.d)

colnames(mint_gcat2) = colnames(mint_nor)
rownames(mint_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(mint_gcat2 == T))

mint_gcat2_per = (count) / (dim(mint_gcat2)[1] * dim(mint_gcat2)[2])




#############
#Sweet Orange

ora_gcat2.u = ora_nor[up_regu_row,] > 1 
ora_gcat2.d = ora_nor[down_regu_row,] < 1

ora_gcat2 = rbind(ora_gcat2.u, ora_gcat2.d)

colnames(ora_gcat2) = colnames(ora_nor)
rownames(ora_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(ora_gcat2 == T))

ora_gcat2_per = (count) / (dim(ora_gcat2)[1] * dim(ora_gcat2)[2])






######
#Lemon

lem_gcat2.u = lem_nor[up_regu_row,] > 1 
lem_gcat2.d = lem_nor[down_regu_row,] < 1

lem_gcat2 = rbind(lem_gcat2.u, lem_gcat2.d)

colnames(lem_gcat2) = colnames(lem_nor)
rownames(lem_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(lem_gcat2 == T))

lem_gcat2_per = (count) / (dim(lem_gcat2)[1] * dim(lem_gcat2)[2])







########
#Cypress

cyp_gcat2.u = cyp_nor[up_regu_row,] > 1 
cyp_gcat2.d = cyp_nor[down_regu_row,] < 1

cyp_gcat2 = rbind(cyp_gcat2.u, cyp_gcat2.d)

colnames(cyp_gcat2) = colnames(cyp_nor)
rownames(cyp_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(cyp_gcat2 == T))

cyp_gcat2_per = (count) / (dim(cyp_gcat2)[1] * dim(cyp_gcat2)[2])






#####
#Milk

milk_gcat2.u = milk_nor[up_regu_row,] > 1 
milk_gcat2.d = milk_nor[down_regu_row,] < 1

milk_gcat2 = rbind(milk_gcat2.u, milk_gcat2.d)

colnames(milk_gcat2) = colnames(milk_nor)
rownames(milk_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(milk_gcat2 == T))

milk_gcat2_per = (count) / (dim(milk_gcat2)[1] * dim(milk_gcat2)[2])




##########
#Melaleuca

mel_gcat2.u = mel_nor[up_regu_row,] > 1 
mel_gcat2.d = mel_nor[down_regu_row,] < 1

mel_gcat2 = rbind(mel_gcat2.u, mel_gcat2.d)

colnames(mel_gcat2) = colnames(mel_nor)
rownames(mel_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(mel_gcat2 == T))

mel_gcat2_per = (count) / (dim(mel_gcat2)[1] * dim(mel_gcat2)[2])




#########
#Lavender

lav_gcat2.u = lav_nor[up_regu_row,] > 1 
lav_gcat2.d = lav_nor[down_regu_row,] < 1

lav_gcat2 = rbind(lav_gcat2.u, lav_gcat2.d)

colnames(lav_gcat2) = colnames(lav_nor)
rownames(lav_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(lav_gcat2 == T))

lav_gcat2_per = (count) / (dim(lav_gcat2)[1] * dim(lav_gcat2)[2])




######
#Yilan

yil_gcat2.u = yil_nor[up_regu_row,] > 1 
yil_gcat2.d = yil_nor[down_regu_row,] < 1

yil_gcat2 = rbind(yil_gcat2.u, yil_gcat2.d)

colnames(yil_gcat2) = colnames(yil_nor)
rownames(yil_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(yil_gcat2 == T))

yil_gcat2_per = (count) / (dim(yil_gcat2)[1] * dim(yil_gcat2)[2])






#########
#Geranium

ger_gcat2.u = ger_nor[up_regu_row,] > 1 
ger_gcat2.d = ger_nor[down_regu_row,] < 1

ger_gcat2 = rbind(ger_gcat2.u, ger_gcat2.d)

colnames(ger_gcat2) = colnames(ger_nor)
rownames(ger_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(ger_gcat2 == T))

ger_gcat2_per = (count) / (dim(ger_gcat2)[1] * dim(ger_gcat2)[2])





###########
#Grapefruit

gra_gcat2.u = gra_nor[up_regu_row,] > 1 
gra_gcat2.d = gra_nor[down_regu_row,] < 1

gra_gcat2 = rbind(gra_gcat2.u, gra_gcat2.d)

colnames(gra_gcat2) = colnames(gra_nor)
rownames(gra_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(gra_gcat2 == T))

gra_gcat2_per = (count) / (dim(gra_gcat2)[1] * dim(gra_gcat2)[2])




########
#Juniper

jun_gcat2.u = jun_nor[up_regu_row,] > 1 
jun_gcat2.d = jun_nor[down_regu_row,] < 1

jun_gcat2 = rbind(jun_gcat2.u, jun_gcat2.d)

colnames(jun_gcat2) = colnames(jun_nor)
rownames(jun_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(jun_gcat2 == T))

jun_gcat2_per = (count) / (dim(jun_gcat2)[1] * dim(jun_gcat2)[2])




#########
#Marjoram

mar_gcat2.u = mar_nor[up_regu_row,] > 1 
mar_gcat2.d = mar_nor[down_regu_row,] < 1

mar_gcat2 = rbind(mar_gcat2.u, mar_gcat2.d)

colnames(mar_gcat2) = colnames(mar_nor)
rownames(mar_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(mar_gcat2 == T))

mar_gcat2_per = (count) / (dim(mar_gcat2)[1] * dim(mar_gcat2)[2])





###########
#Rose Grass

rose_gcat2.u = rose_nor[up_regu_row,] > 1 
rose_gcat2.d = rose_nor[down_regu_row,] < 1

rose_gcat2 = rbind(rose_gcat2.u, rose_gcat2.d)

colnames(rose_gcat2) = colnames(rose_nor)
rownames(rose_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(rose_gcat2 == T))

rose_gcat2_per = (count) / (dim(rose_gcat2)[1] * dim(rose_gcat2)[2])




######
#ceber

ceb_gcat2.u = ceb_nor[up_regu_row,] > 1 
ceb_gcat2.d = ceb_nor[down_regu_row,] < 1

ceb_gcat2 = rbind(ceb_gcat2.u, ceb_gcat2.d)

colnames(ceb_gcat2) = colnames(ceb_nor)
rownames(ceb_gcat2) = c(up_regu, down_regu)


# percentage of success

count = length(which(ceb_gcat2 == T))

ceb_gcat2_per = (count) / (dim(ceb_gcat2)[1] * dim(ceb_gcat2)[2])




# plot Anti-Oxidation for all fragrance

frag_name = c('Eucalyptus', 'Parsley', 'Black Pepper', 'Tea Tree', 
              'Mint', 'Orange', 'Lemon', 'Cypress', 'Milk',
              'Melaleuca', 'Lavender', 'Yilan', 'Geranium', 'Grapefruit',
              'Juniper', 'Marjoram', 'Rose Grass', 'Ceber')

gcat2 = c(euc_gcat2_per, par_gcat2_per, pep_gcat2_per, tea_gcat2_per, 
          mint_gcat2_per, ora_gcat2_per, lem_gcat2_per, cyp_gcat2_per,
          milk_gcat2_per, mel_gcat2_per, lav_gcat2_per, yil_gcat2_per,
          ger_gcat2_per, gra_gcat2_per, jun_gcat2_per, mar_gcat2_per,
          rose_gcat2_per, ceb_gcat2_per)*100

ggplot() +
  geom_bar(aes(x = frag_name, weight = gcat2), 
           fill = c('#F5B7B1', '#AED6F1', '#ABEBC6', '#F9E79F', '#7D3C98',
                    '#45B39D', '#F5B041', '#AF7AC5', '#27AE60', '#EC7063',
                    '#3498DB', '#F7DC6F', '#76D7C4', '#D2B4DE', '#A9DFBF',
                    '#B2BABB', '#E74C3C', '#2980B9')) +
  ggtitle('Anti-inflammatory') +
  xlab('Fragrance') +
  ylab('%') +
  theme(plot.title = element_text(hjust = 0.5))





