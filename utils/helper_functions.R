# Helper functions that are re-used across the analysis
# TODO create a package comprising these functions

###############################################################################
#' Boxplots
#' @description Boxplots for genes of interest
#' @param sce sce object
#' @param x_name column data to plot on the x axis 
#' @param genes genes to plot
#' @param colour level to colour the boxplots on, ie, splitting xaxis values
#' into groups
#' @import ggplot2
#' @importFrom SummarizedExperiment colData
#' @importFrom SingleCellExperiment logcounts
#' @author Regan
###############################################################################

bxplot <- function(sce, x_name, genes, colour, plot_legend = TRUE) {
  
  x <- SummarizedExperiment::colData(sce)[, x_name]
  col <- SummarizedExperiment::colData(sce)[, colour]
  
  plist <- list()
  for (gene in genes) {
    
    if (gene %in% rownames(sce)) {
      logs <- as.numeric(SingleCellExperiment::logcounts(sce[gene]))
    } else {
      logs <- as.numeric(SummarizedExperiment::colData(sce)[, gene])
    }
    
    # create dataframe
    df <- data.frame(Logs = logs, x = x, colour = col)
    
    # keep colour legend if more than one level
    if (nlevels(factor(col)) == 1 | isFALSE(plot_legend)) {
      legend <- theme(legend.position="none") 
    } else {
      legend <- NULL
    }
    
    plist[[gene]] <- ggplot(data = df, aes(y = Logs, x = x, fill = col)) +
      geom_boxplot() + ggtitle(gene) + 
      legend +
      theme(plot.title = element_text(hjust = 0.5),
            axis.text.x = element_text(angle = 45, hjust = 1)) +
      ylab("logcounts") + xlab(x_name) +
      scale_fill_manual(values = c("lightblue", brewer.pal(11,"RdYlGn"),
                                   "#003319","black", "grey50", "grey50")) 
  }
  return(plist)
}


###############################################################################
#' Plot QC plots
#' @description A wrapper around qplot to plot QC metrics with a standard
#' format
#' @param x,y data to plot on the x and y axes
#' @param colour data to colour dots by
#' @param col.high,col.low colour scale extremes
#' @param cutoff x and y limit cutoff
#' @param xlab,ylab x and y axes labels
#' @param size size of dots
#' @param col.label
#' @param title plot title
#' @importFrom ggplot2 qplot
#' @seealso ggplot2
#' 
#' @author Regan
###############################################################################
qcplot <- function (x, y, data, colour, col.high = "yellow", col.low = "blue",
                    cutoff = 600, xlab = NULL, ylab = NULL, size = I(0.3),
                    col.label = NULL, title = NULL, ...) { 
  
  the_plot <- qplot(x, y,  data = data, colour = colour, size = size, ...) +
    scale_colour_gradient(low = col.low,high = col.high) +
    theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.background = element_blank(),
          axis.line = element_line(colour = "black")) +
    xlab(xlab) + ylab(ylab) +
    labs(colour = col.label) + ggtitle(title)
  return (the_plot)
}


###############################################################################
#' Run swappedDrops by flow cell
#' @description a helper function to load all the data from a given flow cell,
#' then run swapped drops
#' @param h5_files paths to all the h5_files for the data on a given flow cell
#' @importFrom DropletUtils swappedDrops
#' @seealso DropletUtils
#' 
#' @author Regan
###############################################################################

run_swappedDrops <- function(h5_files) {
  
  # run swappedDrops
  # note the authors do not recommend setting min.frac lower than 0.5
  s.out <- DropletUtils::swappedDrops(h5_files, barcode.length = NULL, min.frac = 0.9,
                                      get.swapped = TRUE, get.diagnostics = TRUE,
                                      hdf5.out = TRUE)
  
  # write cleaned counts for each sample
  for(sample in 1:length(SLX)) {
    counts <- s.out$cleaned[[sample]]
    write10xCounts(counts, path = file.path(dir0, SLX[sample], "cleaned_counts"))
  }
}

###############################################################################
#' Strip white space and vectorise lists of genes from text files
#' @description a function to split strings remove empty spaces, namely from
#' lists of genes
#' @param gene paths to all the h5_files for the data on a given flow cell
#' 
#' @author Regan
###############################################################################

prepG <- function(gene, sep = " ", match = NULL) {
  gene <- as.matrix(gene)
  list <- names(gene)
  genes <- NULL
  if(length(gene) > 1) {
    for (i in 1:length(gene)) {
      genes <- paste(genes, gene[i], sep=sep)
    }
  } else { genes = gene }
  input <- c(strsplit(genes, sep))
  input <- input[[1]]
  input <- trimws(input, which = "b", whitespace = "[ \t\r\n]")
  
  if(!is.null(match)) {
    input <- input[input %in% rownames(match)]
  }
  return(input)
}
