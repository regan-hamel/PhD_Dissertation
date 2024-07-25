#custom gene lists from Quintana 2020 and Linnarsson 2018, some genes excluded if shown to be expressed in myeloid cells (Movahedi 2019)

Ast <- "Acsl3 Agt Ak7 Aldoc Apoc1 Atp1a2 Bcan Cbs Ccdc146 Ccdc153 Cd24a Cldn10 Clu Cpe Cspg5 Dclk1 Dynlrb2 Ednrb Enkur Fam107 Fam107a Fam183b Fgfr3 Foxj1 Gja1 Gjb6 Gldc Gm11627 Gm19935 Gm973 Gpr37l1 Gria1 Gria2 Gria4 Htra1 Igfbp2 Igsf1 Islr Itih3 Luzp2 Meig1 Mfge8 Mfsd2a Mia Mlc1 Mns1 Ndrg2 Nnat Nrxn1 Ntsr2 Pla2g7 Plpp3 Ppp1r3g Ptprz1 Rarres2 Riiad1 Rsph1 S100b S1pr1 Scg3 Slc13a3 Slc1a2 Slc1a3 Slc25a18 Slc4a4 Slc6a11 Slc7a10 Sparcl1 Spef2 Timp4 Tmem212 Tspan7 Ttyh1"
names(Ast) <- "Astrocytes-custom"

Olig <- "2210011C24Rik 2700046A07Rik Aplp1 Apod Arap2 Birc2 Bmp4 Brca1 C1ql1 Car2 Ccp110 Cdkn1c Cldn11 Cnksr3 Cnp Cryab Efhd1 Emid1 Enpp6 Ermn Fam214a Fez1 Gm21984 Gm26834 Gpr17 Hhip Il23a Itpr2 Klk6 Lhfpl3 Lims2 Mag Mal Mbp Mobp Mog Neu4 Ninj2 Nkx2-9 Opalin Pak4 Pdcd4 Pdgfra Plp1 Ppp1r14a Ptgds Qdpr ab37 Rinl Rras2 Sapcd2 Sema4d Snx33 Stmn4 Tmem141 Tmem163 Tmem2 Tmem88b Tnr Trf Ugt8a Wfdc18 "
names(Olig) <- "Oligodendrocytes and precursors-custom"

Peri <- "Anpep Apln Art3 Atp13a5 Atp1a2 Cald1 Car4 Cd93 Cox4i2 Ctla2a Degs2 Ecm2 Ecscr Flt1 Gucy1b1 Higd1b Hspb1 Igfbp7 Itga1 Kcnj8 Ndufa4l2 P2ry14 Pdgfrb Ptn Rgs4 Rgs5 Sod3 Tbxa2r Vtn "
names(Peri) <- "Pericytes-custom"

#neurons list shortened for aesthetics, however they were not expressed in the dataset
Neu <-  "Arpp21 Atp1b1 Cacng4 Card10 Cdca7 Cenpf Dlx1 Dlx6os1 Ezh2 Gap43 Gbx1 Gria2 Grp Hmgb3 Hoxb5os Hoxb7 Hoxb8 Hoxb9 Hoxc10 Hoxc8 Kcnk3 Kcnmb2 Krt17 Lbx1 Lhfpl3 Mab21l2 Map1b Meg3 Meis2 Mrap2 Nap1l5 Nefl Nmu Nppc Nrl Nrxn1 Nts Olig1 Pax8 Pclaf Pcp2 Pcp4 Pcsk5 Pde11a Pdzk1ip1 Pfn2 Pkd2l1 Pla2g5 RP24-236C17.2 Rbfox3 Rspo3 Rtn1 Serpinb1b Snap25 Snhg11 Sox11 Stmn2 Stmn3 Syt1 Tacr3 Top2a Ttc3 Tubb3 Ucn3 Vsig8" #"1500009L16Rik Aard Arpp21 Atp1b1 B3gat2 C1ql3 Cacng4 Card10 Ccnd2 Cdca7 Cenpf Cpne8 Crabp1 Crct1 D630023F18Rik Dlx1 Dlx6os1 Doc2a Espn Ezh2 Fam159b Frzb Gap43 Gbx1 Glra1 Gm5 Gria2 Grp Hmgb3 Hmgn2 Hoxa10 Hoxa7 Hoxa9 Hoxb2 Hoxb5os Hoxb6 Hoxb7 Hoxb8 Hoxb9 Hoxc10 Hoxc6 Hoxc8 Hoxc9 Kcnab3 Kcnk3 Kcnmb2 Krt17 Lbx1 Lhfpl3 Lhfpl5 Lhx1 Mab21l2 Map1b Meg3 Meis2 Mrap2 Nap1l5 Nefl Nmu Nppc Nrl Nrxn1 Nts Nxph1 P2ry1 Pax8 Pclaf Pcp2 Pcp4 Pcsk5 Pde11a Pde4d Pdzk1ip1 Pfn2 Pkd1l2 Pkd2l1 Pla2g5 Plch1 Pnoc Prrxl1 RP24-236C17.2 Rapsn Relt Resp18 Rspo1 Rspo3 Rtn1 Sall3 Serpinb1b Skor1 Slc16a11 Snap25 Snhg11 Sox11 Sox4 Spint2 Sstr2 Stmn2 Stmn3 Syt1 Tacr3 Tlx3 Tnfrsf13c Top2a Ttc3 Tuba1a Tubb3 Tunar Ucn3 Vcan Vsig8"

#Quintana, Linnarsson SC neurons 1/2 for brevity (not expressed)+ cannonical neuron markers
names(Neu) <- "Neurons-custom"

Ep <- "1500015O10Rik 2900040C04Rik Atp1b1 Calml4 Chchd10 Enpp2 Folr1 Igfbp2 Kcnj13 Kl Ppp1r1b Prlr Rbp1 Rdh5 Sostdc1 Trpm3 Ttr"
names(Ep) <- "Ependymal Cells-custom"

MG <- "Aif1 Bcl2a1b Bsg C1qa C1qb C1qc Ccl12 Ccl3 Ccl4 Cd83 Csf1r Cst3 Cst7 Ctsb Ctsd Ctss Ctsz Cx3cr1 Fcrls Gpr34 Grn Hexb Hpgds Lgals3bp Lgmn Ly86 Marcks Olfml3 P2ry12 P2ry13 Sall1 Selplg Siglech Slca5 Sparc Tmem119 Trem2"
names(MG) <- "MG-custom" #Haage et al 2019 and Barres and Quintana and Linnarsson

MC <- "AA467197 Arg1 Ccl2 Ccl24 Ccl6 Ccl7 Chil3 Clec4n Clec7a Cstb Cxcl2 Cybb Dab2 F10 F13a1 Gm6977 Ifi207 Lgals3 Ly6c2 Lyz2 Maf Mrc1 Ms4a7 Pf4 Saa3 Stab1 Tgfbi Wfdc17"
names(MC) <- "MC+MCd-custom"

NP <- "S100a8 S100a9 Lcn2 Retnlg Ifitm1 Cxcr2 Mxd1 Ltf Cited2"
names(NP) <- "NP-custom" #Prinz 2019, Olssen quintana and Tusi, not in Linnarsson, many generic (cyclcing) genes removed from quinatana

DC <- "Ccl17 Ccr2 Ccr7 Cd74 Flt3 H2-Aa H2-Ab1 H2-Eb1 Ifi203 Ifi205 Ifi211 Ifi27l2a Ifitm1 Itgax Il1b Mndal Ms4a4c Ms4a6c Plac8 Plbd1 Sp140 Zbtb46"
names(DC) <- "DC-custom"#Prinz 2019 quintana, not in Linnarsson
