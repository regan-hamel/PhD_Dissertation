# A function to quickly and roughly generate a UMAP (no-QC) and cluster a sce for the use of comparing pre- and post-SoupX

quickA <- function(sce, p = 90) {
library(DropletUtils)
library(BiocSingular)
library(org.Mm.eg.db)
library(scater)
library(scran)
set.seed(1000)

#cluster the sample to generate size factors for normalization
clusters <- quickCluster(sce, use.ranks=FALSE, method = "igraph", min.size = 100)
sce <- computeSumFactors(sce, min.mean=0.1, cluster=clusters, BPPARAM=SerialParam())

#normalize the sample
sce <- normalize(sce)
new.trend <- makeTechTrend(x=sce)
fit <- trendVar(sce, use.spikes=FALSE, loess.args=list(span=0.05))
fit$trend <- new.trend

#separate the gene variance into biological and technical components
dec <- decomposeVar(fit=fit)

#order the genes by descending level of biological variance
top.dec <- dec[order(dec$bio, decreasing=TRUE),]

#Save the sce after you've used PCA to regress out technical noise
sce <- denoisePCA(sce, technical=dec, BSPARAM=IrlbaParam())
sce$perplex <- p
sce <- runUMAP(sce, dimred="PCA", perplexity=p, rand_seed= 1000)
snn.gr <- buildSNNGraph(sce, use.dimred="PCA")

#return a sce ready for UMAP visualization
return(sce)
}
