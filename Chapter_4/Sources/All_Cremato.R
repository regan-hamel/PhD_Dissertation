dir0 <- "/Users/reganhamel/Dropbox (Cambridge University)/Lab/Regan/SCI scRNA-seq Project/Cx3cr1 Data/Universal Workflow/Cell Ranger 3.1.0/Cell Ranger Data/SCI/"
dir1 <- "/Users/reganhamel/Documents/PhD/PhD Dissertation/Chapter 4/scRNAseq/"

#set number of samples
n <- 20

sce1 <- cbind("SIGAB10", "10", "SCI", "23-May-19", "CreYFP", "Cre", "M", "10", "SLX-17850", "Macro-10", "SCI", "With Barcode Swapping")
sce2 <- cbind("SIGAG4", "21", "SCI", "05-Jun-19", "CreYFP","Cre", "M", "21", "SLX-17998", "Macro-21", "SCI", "With Barcode Swapping")
sce3 <- cbind("SIGAA7", "3", "SCI", "26-Sep-19", "CreRFP", "Cre", "M", "3", "SLX-18641", "Micro-3", "SCI", "With Barcode Swapping")
sce4 <- cbind("SIGAB7", "3", "SCI", "26-Sep-19", "CreYFP", "Cre", "M", "3", "SLX-18641", "Macro-3", "SCI", "With Barcode Swapping")
sce5 <- cbind("SIGAF5", "2", "SCI", "17-Oct-19", "CreYFP", "Cre", "M", "2", "SLX-18703", "Macro-2", "SCI", "With Barcode Swapping")
sce6 <- cbind("SIGAE5", "1", "SCI", "17-Oct-19", "CreYFP", "Cre", "F", "1", "SLX-18703", "Macro-1", "SCI", "With Barcode Swapping")
sce7 <- cbind("SIGAB11", "1", "SCI", "31-Oct-19", "CreYFP", "Cre", "M", "1", "SLX-18703", "Macro-1", "SCI", "With Barcode Swapping")
sce8 <- cbind("SIGAC11", "3", "SCI", "31-Oct-19", "CreRFP", "Cre", "F", "3", "SLX-18703", "Micro-3", "SCI", "With Barcode Swapping")
sce9 <- cbind("SIGAD11", "3", "SCI", "31-Oct-19", "CreYFP", "Cre", "F", "3", "SLX-18703", "Macro-3", "SCI", NULL)
sce10 <- cbind("SIGAH2", "HC", "HC", "6-Mar-20", "CreRFP", "Cre", "M", "HC", "SLX-19290_20619", "Micro-HC", "SCI", NULL)
sce11 <- cbind("SIGAA1", "2", "SCI", "6-Mar-20", "CreRFP", "Cre", "M", "2", "SLX-19290", "Micro-2", "SCI", "With Barcode Swapping")
sce12 <- cbind("SIGAE3.D10", "10", "SCI", "6-Mar-20", "CreRFP", "Cre", "F", "10", "SLX-19290", "Micro-10", "SCI", "With Barcode Swapping")
sce13 <- cbind("SIGAF3.D10", "10", "SCI", "6-Mar-20", "CreYFP", "Cre", "F", "10", "SLX-19290", "Macro-10", "SCI", "With Barcode Swapping")
sce14 <- cbind("SIGAC10", "10", "SCI", "23-May-19", "CreRFP", "Cre", "M", "10", "SLX-17850_20619", "Micro-10", "SCI", NULL)
sce15 <- cbind("SIGAA10", "HC", "HC", "23-May-19", "CreRFP", "Cre", "M", "HC", "SLX-17850_20619", "Micro-HC", "SCI", NULL)
sce16 <- cbind("SIGAF4", "21", "SCI", "5-June-19", "CreRFP", "Cre", "M", "21", "SLX-17998_20619", "Micro-21", "SCI", NULL)
sce17 <- cbind("SIGAG5", "21", "SCI", "1-May-21", "CreRFP", "Cre", "M", "21", "SLX-20619", "Micro-21", "SCI", "With Barcode Swapping")
sce18 <- cbind("SIGAH5", "21", "SCI", "1-May-21", "CreYFP", "Cre", "M", "21", "SLX-20619", "Macro-21", "SCI", "With Barcode Swapping")
sce19 <- cbind("SIGAE5.D21", "21", "SCI", "1-May-21", "CreRFP", "Cre", "F", "21", "SLX-20619", "Micro-21", "SCI", "With Barcode Swapping")
sce20 <- cbind("SIGAF5.D21", "21", "SCI", "1-May-21", "CreYFP", "Cre", "F", "21", "SLX-20619", "Macro-21", "SCI", "With Barcode Swapping")





