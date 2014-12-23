args<-commandArgs(TRUE)
cran <- read.csv(args[1], header=FALSE) ;
post <- read.csv(args[2], header=FALSE) ;
a <- as.numeric(unlist(cran));
b <- as.numeric(unlist(post));
x <- wilcox.test(a, b);
y <- rbind(c("args[1]",x));
write.table(y, file="riMWU.out", append=TRUE, sep=",", row.names=FALSE, col.names=FALSE);
