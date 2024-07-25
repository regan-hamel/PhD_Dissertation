# a function to split strings remove empty spaces, namely from lists of genes
prepG <- function(gene, sep = " ", match=NULL) {
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
