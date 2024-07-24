# Regan Hamel - PhD Dissertation

<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a id="readme-top"></a>

[![PhD Thesis][PhD-shield]][PhD-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
[![ResearchGate][ResearchGate-shield]][ResearchGate-url]




<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#abstract">Abstract</a></li>
    <li><a href="#reproducibility">Reproducibility</a></li>
    <li><a href="#supplementary">Supplementary</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



### About The Project
This repository documents the code used for the analysis and figure generation of my PhD thesis. As the only bioinformatician in my PhD lab, this was unfortunately not a collaborative coding project. Luckily, I've since gained extensive experience in collaborative coding on proprietary projects!

*Please note* I am in the process of refactoring this code to better reflect my capabilities. Check out the timestamps in this repo to see my latest work.



### Abstract 
Spinal cord injury (SCI) is a devastating pathology that affects thousands of individuals annually, resulting in the requirement for long-term physical and medical care and thus significant personal, societal, and economic burdens. The SCI pathology is characterised by an initial mechanical insult, followed by a spatiotemporally dynamic secondary injury. Decades of research have worked to assemble a general picture of this secondary pathology. We now understand that compared to the normal wound healing observed in the periphery, tissue recovery after SCI is dysregulated and results in a chronic wound state characterized by persistent inflammation and functional deficits. The primary drivers of this inflammation are central nervous system (CNS) resident microglia and infiltrating myeloid cells. However, the precise role of these myeloid cell subsets remains unclear as upon crossing the blood-spinal cord barrier (BSCB), infiltrating monocyte-derived macrophages may take on the morphology of microglia, and upregulate canonical microglia markers, making the two populations difficult to distinguish.

In this PhD project, I employed single-cell RNA sequencing (scRNAseq) to deconvolute the complex heterogeneity of infiltrating and resident myeloid cells in mouse models of thoracic contusion SCI at an unprecedented resolution. To fully appreciate the temporal dynamics of the pathology, I collected samples across the acute, subacute, and early chronic phases of SCI, plus a sham-injured control. Recent experiments have demonstrated that CNS infiltrating macrophages also take on the transcriptional profiles of microglia, which led me to question whether I had accurately annotated infiltrating macrophages in the dataset. To address this, I repeated the experiment with a transgenic fate-mapping mouse line then integrated these two datasets to generate a time-resolved SCI myeloid cell atlas with definitive ontogeny labelling. With this dataset I generated a putative time resolved map of myeloid cell dynamics across the SCI pathology. Through collaboration, I was also able to verify the expression of select genes via single-molecule fluorescent in situ hybridization (smFISH) and immunofluorescence (IF). A key observation was the persistence of a pro-inflammatory foam cell-like state in both microglia and macrophages, which may contribute to the non-resolving chronic injury. Future studies might investigate the functional relevance of this population, and its suitability as a therapeutic target to reduce the long-term disabilities of SCI patients.
<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Reproducibility

To reproduce the figures in my PhD thesis, first download the raw count data from the GEO repository ([GSE159638](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE159638)). Load this data into a SingleCellExperiment object and then follow the notebooks provided in the repository, starting at Chapter_3/[3_combining_samples.Rmd](Chapter_3/3_combining_samples.Rmd) and working your way through in order. Alternatively, one can download the fastq files from the same GEO repository and process them in Cell Ranger, as described in my [PhD thesis](https://www.repository.cam.ac.uk/items/1cbb1d78-29ac-4415-ba1f-d1d7d2fbfc06), and start the analysis from Chapter_3/[1_barcode_swapping.Rmd](Chapter_3/1_barcode_swapping.Rmd).

Unfortunately, at the time of writing this thesis, I was not familiar with/aware of the importance of package management tools. In a (minimal effort) attempt to remedy this, I have included the output of [sessionInfo()](session_info.txt). Needless to say, I know better now!


### Supplementary
This repository is supplemented by the following:<br />
[Data Repository](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE159638)<br />
[Shiny App](https://marionilab.cruk.cam.ac.uk/SCI_Myeloid_Cell_Atlas/)<br />
[PhD thesis](https://www.repository.cam.ac.uk/items/1cbb1d78-29ac-4415-ba1f-d1d7d2fbfc06)<br />
[Publication](https://www.sciencedirect.com/science/article/pii/S2405844023055470)<br />



### Acknowledgments

I would like to thank [Stefano Pluchino](https://www.pluchinolab.org/) for his supervision and for teaching me about academia. Thanks to [John Marioni](https://www.ebi.ac.uk/people/person/john-marioni/) for his incredible support as a secondary supervisor and for being a model of considerate and effective leadership. Bryan, Veronica, and Yutong, thank you for making me a better teacher. Greg and Bristena, thank you for the inspiration, your amazing support, and your friendship. Jayden, thanks for the jokes. Thanks to all the other members of the Pluchino lab for their contributions over the years. Karsten, Shila, Leah and Andrian & the Marioni group, thanks for all your advice and for demonstrating the type of positive work environment I aspire to contribute to.

A quick thanks to Kasia, who was always a smiling face I looked forward to seeing at the end of a long day of single-cell isolation.

To our collaborators, especially Stefano Stifani, Louise Thiry, and Katherine Ridley, for their insight and encouragement.

Thanks to the Cambridge Trust, Rosetrees Trust, and CST for supporting me through this journey.

Cheers to Michelle, Liz, Amar, and Ana who kept me close to North America, and Emma, Priyanka, Carrie, and Gloria and all the lovely faces in Cambridge who make it feel like home.

I must express my deep appreciation for all my loving and encouraging Canadian and Swiss family members who played a crucial role in my academic success, including of course my Mamma, for telling me to Reganize it, Pops, for making me strong and independent, and Brenna, for being the most inspirational sisterfriend anyone could ever ask for. Finally, thank you Clay, for everything.


### Contact

Regan Hamel:
[GitHub](https://github.com/regan-hamel),
[LinkedIn](https://www.linkedin.com/in/regan-hamel-cambridge/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/regan-hamel-cambridge/
[PhD-shield]: https://img.shields.io/badge/PhD%20Thesis%20-%20PhD?style=for-the-badge&label=Apollo&color=%231d7680
[PhD-url]: https://www.repository.cam.ac.uk/items/1cbb1d78-29ac-4415-ba1f-d1d7d2fbfc06
[ResearchGate-shield]: https://img.shields.io/badge/ResearchGate%20-%20path?style=for-the-badge&logo=Regan%20Hamel%20-%20path&color=%2329ccbc
[ResearchGate-url]: https://www.researchgate.net/profile/Regan-Hamel

