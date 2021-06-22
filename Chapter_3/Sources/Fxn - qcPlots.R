# a function for quickly generating qplots and data frames containing quality control metrics

qcplot <- function (x, y, data, colour, col.high = "yellow", col.low = "blue", cutoff = 600, xlab = "x", ylab = "y", xlim =1.1*max(dat$x), ylim = 1.1*max(dat$y), size=I(0.3), col.label){ #list of arguments the fxn takes
  return (
    qplot(x, y,  data=dat, colour=colour, size=size) + scale_colour_gradient(low=col.low,high=col.high) + geom_hline(yintercept = cutoff, colour = "red") + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + scale_x_continuous(name=xlab, limits = c(0.99*min(dat$x), xlim)) + scale_y_continuous(name=ylab, limits = c(0.99*min(dat$y), ylim)) + labs(colour = col.label)
  )
}

cutoff <- UMIs

pdf(file = paste0(dir0, "3.",stage, "-Metrics.pdf"))

#All 3 metrics - mito UMIs
dat <- data.frame(x = sce$total_counts, y = sce$total_features_by_counts, colour = sce$pct_counts_Mito)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "Gene Counts", col.label = "% Mito UMIs")

#ZOOM All 3 metrics - cutoff
dat <- data.frame(x = sce$total_counts, y = sce$total_features_by_counts, colour = sce$pct_counts_Mito)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "Gene Counts", ylim = 1.1*cutoff, xlim = 3*cutoff, col.label = "% Mito UMIs")

#ZOOM All 3 metrics - 1/2 cutoff
dat <- data.frame(x = sce$total_counts, y = sce$total_features_by_counts, colour = sce$pct_counts_Mito)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "Gene Counts", ylim = 0.5*cutoff, xlim = 1*cutoff, col.label = "% Mito UMIs")

#Mito vs genes
dat <- data.frame(x = sce$total_features_by_counts, y = sce$pct_counts_Mito, colour = sce$pct_counts_Mito)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "% Mito Counts", col.label = "% Mito UMIs")

#Mito vs UMIs
dat <- data.frame(x = sce$total_counts, y = sce$pct_counts_Mito, colour = sce$pct_counts_Mito)
qcplot(dat$x, dat$y, data = dat, colour = sce$pct_counts_Mito, xlab = "Gene Counts", ylab = "% Mito Counts", col.label = "% Mito UMIs") 

#Rib vs UMIs
dat <- data.frame(x = sce$total_counts, y = sce$total_features_by_counts, colour = sce$pct_counts_Ribo)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "Gene Counts", ylab = "% Ribo Counts", col.label = "% Ribo UMIs")

#Rib vs Mito
dat <- data.frame(x = sce$pct_counts_Ribo, y = sce$pct_counts_Mito, colour = sce$total_counts)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "% Ribo UMIs", ylab = "% Mito Counts", col.label = "Total Counts")

dev.off()

#optional by mito genes chunk

# sce$pct_features_Mito <- (sce$total_features_by_counts_Mito/sce$total_features_by_counts)*100
# #All 3 metrics - mito Genes
# dat <- data.frame(x = sce$total_counts, y = sce$total_features_by_counts, colour = sce$pct_features_Mito)
# qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "Gene Counts", col.label = "% Mito Genes")
# 
# #ZOOM All 3 metrics - cutoff
# dat <- data.frame(x = sce$total_counts, y = sce$total_features_by_counts, colour = sce$pct_features_Mito)
# qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "Gene Counts", ylim = 1.1*cutoff, xlim = 3*cutoff, col.label = "% Mito Genes")
# 
# #ZOOM All 3 metrics - 1/2 cutoff
# dat <- data.frame(x = sce$total_counts, y = sce$total_features_by_counts, colour = sce$pct_features_Mito)
# qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "Gene Counts", ylim = 0.5*cutoff, xlim = 1*cutoff, col.label = "% Mito Genes")



pdf(paste0(dir0, "3.",stage,"-QC Histograms.pdf"))
hist(sce$log10_total_counts, xlab="Log-total UMI Counts", breaks=20, col="grey80",
     ylab="Number of cells", main = "Number of Detected Transcripts per Cell")

#Examining the number of detected genes per cell
hist(sce$log10_total_features_by_counts, breaks=20, col="grey80",
     xlab="Log-total number of expressed Genes", main = "Number of Detected Genes per Cell", ylab="Number of cells")
dev.off()

#Examining the proportion of mitochondrial to nuclear DNA
hist(sce$pct_counts_Mito, breaks=20, col="grey80",
     xlab="Proportion of Reads That Are Mitochondrial Genes", 
     ylab="Number of cells", main = "% Mitochondrial Genes per Cell")
dev.off()

cutoff <- NA
