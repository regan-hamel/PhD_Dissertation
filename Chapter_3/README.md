
# Chapter 3: Generating the Time-Resolved Myeloid Cell Atlas

### Chapter Introduction
The ability of single-cell transcriptomics to uncover cellular-level heterogeneity, even in seemingly homogenous populations, has transformed our understanding of cellular biology. In the context of myeloid cells after SCI, scRNAseq has allowed us to deconvolute the dynamic and heterogenous response that occurs during the secondary injury at an unprecedented resolution. This high-throughput approach generates immense quantities of data with unique computational challenges; thus the analysis of scRNAseq data must be planned and executed just as carefully as the sample collection.
Myeloid cells are of particular interest after SCI as they are major players in the inflammatory response in both humans and mice (Alizadeh et al., 2019; Gensel & Zhang, 2015). Furthermore, in contrast to peripheral lesions, SCI is characterised by persistent inflammation and the number of myeloid cells in the spinal cord post-SCI remain elevated well into the chronic phase (Donnelly & Popovich, 2008) and likely perpetuate the inflammation that characterises chronic wound state post-SCI. However, over the course of the SCI pathology, myeloid cells play complex and dynamic roles with beneficial, as well as detrimental effects (Gaudet & Fonken, 2018) (1.1.3 A Closer Look at the Immune Response to SCI). Thus, a time resolved analysis at single cell resolution would help to unravel the heterogenous roles of myeloid cells post-SCI.
Here, I developed a single cell isolation protocol to extract Cx3cr1+ myeloid cells from transgenic mouse models of contusion SCI across the acute, subacute, and early chronic phases of SCI for scRNAseq. Significant effort was made to minimise extraction-induced transcription. Other researchers have confirmed that microglia are highly sensitive to perturbations and have shown that the isolation of these cells for scRNAseq can produce activated clusters if extra precautions are not taken (Haimon et al., 2018; Marsh et al., 2020). Using this Cx3cr1 dataset, I also established a pre-processing, quality control and preliminary analysis workflow based on published approaches, most of which have recently been summarised in an online book (Amezquita et al., 2020). 

[![PhD Thesis][PhD-shield]][PhD-url]

<!-- MARKDOWN LINKS & IMAGES -->
[PhD-shield]: https://img.shields.io/badge/PhD%20Thesis%20-%20PhD?style=for-the-badge&label=Apollo&color=%231d7680
[PhD-url]: https://www.repository.cam.ac.uk/items/1cbb1d78-29ac-4415-ba1f-d1d7d2fbfc06
