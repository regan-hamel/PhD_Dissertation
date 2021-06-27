dir0 <- "/Users/reganhamel/Dropbox (Cambridge University)/Lab/Regan/SCI scRNA-seq Project/Cx3cr1 Data/Universal Workflow/Cell Ranger 3.1.0/Cell Ranger Data/"
dir1 <- "/Users/reganhamel/Documents/PhD/PhD Dissertation/Chapter 3/scRNAseq/"

#set number of samples
n <- 15

sce1 <- cbind("SIGAD3", "3", "SCI", "10-Jan-19", "Cx3", "Cx3", "M", "3", "SLX-17383", "Cx3-3", "SCI", "With Barcode Swapping")
sce2 <- cbind("SIGAE3", "3", "SCI", "10-Jan-19", "Cx3", "Cx3", "M", "3", "SLX-17383", "Cx3-3", "SCI", "With Barcode Swapping")
sce3 <- cbind("SIGAD10", "10", "HC", "23-May-19", "Cx3", "Cx3", "F", "HC", "SLX-17850", "Cx3-HC", "SCI", NULL)
sce4 <- cbind("SIGAE10", "10", "SCI", "23-May-19", "Cx3","Cx3", "M", "10", "SLX-17850", "Cx3-10", "SCI", "With Barcode Swapping")
sce5 <- cbind("SIGAF10", "10", "SCI", "23-May-19", "Cx3", "Cx3", "M", "10", "SLX-17850", "Cx3-10", "SCI", "With Barcode Swapping")
sce6 <- cbind("SIGAF9", "1", "SCI", "28-Mar-19", "Cx3", "Cx3", "M", "1", "SLX-17931", "Cx3-1", "SCI", "With Barcode Swapping")
sce7 <- cbind("SIGAH11", "1", "SCI", "9-Apr-19", "Cx3", "Cx3", "M", "1", "SLX-17931", "Cx3-1", "SCI", "With Barcode Swapping")
sce8 <- cbind("SIGAE11", "2", "SCI", "20-Jul-19", "Cx3", "Cx3", "M", "2", "SLX-17998", "Cx3-2", "SCI", "With Barcode Swapping")
sce9 <- cbind("SIGAF11", "2", "SCI", "20-Jul-19", "Cx3", "Cx3", "F", "2", "SLX-17998", "Cx3-2", "SCI", "With Barcode Swapping")
sce10 <- cbind("SIGAG9.D3", "3", "SCI", "20-Jul-19", "Cx3", "Cx3", "M", "3", "SLX-17998", "Cx3-3", "SCI", NULL)
sce11 <- cbind("SIGAG11.D2", "2", "HC", "20-Jul-19", "Cx3", "Cx3", "F", "HC", "SLX-17998", "Cx3-HC", "SCI", NULL)
sce12 <- cbind("SIGAG11.D21", "21", "SCI", "9-Apr-19", "Cx3", "Cx3", "F", "21", "SLX-17931", "Cx3-21", "SCI", "With Barcode Swapping")
sce13 <- cbind("SIGAG9.D1", "1", "SCI", "28-Mar-19", "Cx3", "Cx3", "M", "1", "SLX-17931", "Cx3-1", "SCI", "With Barcode Swapping")
sce14 <- cbind("SIGAF3", "3", "HC", "10-Jan-19", "Cx3", "Cx3", "M", "HC","SLX-17383", "Cx3-HC", "SCI", "With Barcode Swapping" )
sce15 <- cbind("SIGAH9", "1", "HC", "28-Mar-19", "Cx3", "Cx3", "M", "HC","SLX-17931", "Cx3-HC", "SCI", "With Barcode Swapping")