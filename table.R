tab <- matrix(c("jacob","henry","smith","will"), ncol=2, byrow=TRUE)

#define column names and row names of matrix
colnames(tab) <- c('A', 'B')
rownames(tab) <- c('F', 'G')

#convert matrix to table 
tab <- as.table(tab)

#view table 
tab