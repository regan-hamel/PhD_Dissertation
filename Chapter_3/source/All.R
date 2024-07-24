dir0 <- "/Users/reganhamel/gitlab/PhD_Dissertation_data/SCI/"
dir1 <- "/Users/reganhamel/Documents/PhD/PhD Dissertation/Chapter 3/scRNAseq/"

#set number of samples
n <- 15

metadata <- list(
  sce1 = c("SIGAD3", "3", "SCI", "10-Jan-19", "Cx3", "Cx3", "M", "3", "SLX-17383", "Cx3-3", "SCI", "With Barcode Swapping"),
  sce2 = c("SIGAE3", "3", "SCI", "10-Jan-19", "Cx3", "Cx3", "M", "3", "SLX-17383", "Cx3-3", "SCI", "With Barcode Swapping"),
  sce3 = c("SIGAD10", "10", "HC", "23-May-19", "Cx3", "Cx3", "F", "HC", "SLX-17850", "Cx3-HC", "SCI", NULL),
  sce4 = c("SIGAE10", "10", "SCI", "23-May-19", "Cx3","Cx3", "M", "10", "SLX-17850", "Cx3-10", "SCI", "With Barcode Swapping"),
  sce5 = c("SIGAF10", "10", "SCI", "23-May-19", "Cx3", "Cx3", "M", "10", "SLX-17850", "Cx3-10", "SCI", "With Barcode Swapping"),
  sce6 = c("SIGAF9", "1", "SCI", "28-Mar-19", "Cx3", "Cx3", "M", "1", "SLX-17931", "Cx3-1", "SCI", "With Barcode Swapping"),
  sce7 = c("SIGAH11", "1", "SCI", "9-Apr-19", "Cx3", "Cx3", "M", "1", "SLX-17931", "Cx3-1", "SCI", "With Barcode Swapping"),
  sce8 = c("SIGAE11", "2", "SCI", "20-Jul-19", "Cx3", "Cx3", "M", "2", "SLX-17998", "Cx3-2", "SCI", "With Barcode Swapping"),
  sce9 = c("SIGAF11", "2", "SCI", "20-Jul-19", "Cx3", "Cx3", "F", "2", "SLX-17998", "Cx3-2", "SCI", "With Barcode Swapping"),
  sce10 = c("SIGAG9.D3", "3", "SCI", "20-Jul-19", "Cx3", "Cx3", "M", "3", "SLX-17998", "Cx3-3", "SCI", NULL),
  sce11 = c("SIGAG11.D2", "2", "HC", "20-Jul-19", "Cx3", "Cx3", "F", "HC", "SLX-17998", "Cx3-HC", "SCI", NULL),
  sce12 = c("SIGAG11.D21", "21", "SCI", "9-Apr-19", "Cx3", "Cx3", "F", "21", "SLX-17931", "Cx3-21", "SCI", "With Barcode Swapping"),
  sce13 = c("SIGAG9.D1", "1", "SCI", "28-Mar-19", "Cx3", "Cx3", "M", "1", "SLX-17931", "Cx3-1", "SCI", "With Barcode Swapping"),
  sce14 = c("SIGAF3", "3", "HC", "10-Jan-19", "Cx3", "Cx3", "M", "HC","SLX-17383", "Cx3-HC", "SCI", "With Barcode Swapping" ),
  sce15 = c("SIGAH9", "1", "HC", "28-Mar-19", "Cx3", "Cx3", "M", "HC","SLX-17931", "Cx3-HC", "SCI", "With Barcode Swapping")
)