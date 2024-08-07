library(ggplot2)

qcplot <- function (x, y, data, colour, col.high = "yellow", col.low = "blue", xlab = "x", ylab = "y", xlim =1.1*max(dat$x), ylim = 1.1*max(dat$y), size=I(0.3), col.label){ #list of arguments the fxn takes
  return (
    qplot(x, y,  data=dat, colour=colour, size=size) + scale_colour_gradient(low=col.low,high=col.high) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + scale_x_continuous(name=xlab, limits = c(0.99*min(dat$x), xlim)) + scale_y_continuous(name=ylab, limits = c(0.99*min(dat$y), ylim)) + labs(colour = col.label)
  )
}

# total = total sum of counts for each cell across the main and alternative Experiments. 
# sum = library size
# detected = number of genes expressed
#The percent field contains the percentage of the total count in each alternative Experiment for each cell.


dir.create(dir0)
pdf(file = paste0(dir0, "3.",stage, "-Metrics.pdf"))

#All 3 metrics - mito UMIs
dat <- data.frame(x = log10(sce$sum), y = log10(sce$detected), colour = sce$subsets_Mito_percent)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "Detected Genes", col.label = "% Mito UMIs")

#Mito vs genes
dat <- data.frame(x = log10(sce$detected), y = sce$subsets_Mito_percent, colour = sce$subsets_Mito_percent)
qcplot(dat$x, dat$y, data = dat, colour = colour, xlab = "UMI Counts", ylab = "% Mito Counts", col.label = "% Mito UMIs")

#Mito vs UMIs
dat <- data.frame(x = log10(sce$sum), y = sce$subsets_Mito_percent, colour = sce$subsets_Mito_percent)
qcplot(dat$x, dat$y, data = dat, colour = sce$subsets_Mito_percent, xlab = "Detected Genes", ylab = "% Mito Counts", col.label = "% Mito UMIs") 

dev.off()


pdf(paste0(dir0, "3.",stage,"-QC Histograms.pdf"))
hist(log10(sce$sum), xlab="Log10-total UMI Counts", breaks=20, col="grey80",
     ylab="Number of cells", main = "Number of Detected Transcripts per Cell")

#Examining the number of detected genes per cell
hist(log10(sce$detected), breaks=20, col="grey80",
     xlab="Log10-total number of expressed Genes", main = "Number of Detected Genes per Cell", ylab="Number of cells")
dev.off()

#Examining the proportion of mitochondrial to nuclear DNA
hist(sce$subsets_Mito_percent, breaks=20, col="grey80",
     xlab="Proportion of Reads That Are Mitochondrial Genes", 
     ylab="Number of cells", main = "% Mitochondrial Genes per Cell")
dev.off()

