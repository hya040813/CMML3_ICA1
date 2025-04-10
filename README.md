# CMML3_ICA1
This mini-project investigates the effect of mutations on the inhibition of subtilisin by chymotrypsin inhibitor 2 (CI2). By combining homology modelling, protein interface analysis (PDBePISA) and structural visualization tools (PyMOL), I have identified key residues, I: Met59 and I: Tyr61, as the major contributors to the 'clogged gutter' mechanism. Mutation analysis suggests that their replacement may significantly affect deacylation efficiency and inhibitor potency.

# explanation of the files
1tm1.cif is downloaded from RCSB PDB website.
fold_m59k_model_0.cif, fold_m59k_y61a_model_0.cif, fold_y61a_model_0.cif are models built by AlphaFold3 according to the protocol in CMML3 workshop.
M59K.pdb, M59K+Y61A.pdb, Y61A.pdb are models built by SWISS-MODEL according to the guidance of the website.
CI2 analysis.pml and CI2_overlay_clean.pml are scripts I used to conduct the overlay structure analysis.
rmsd_compare.pml is used to compare the structure of WT and mutant types.
rmsd_AF&SWISS.pml is used to compare the structure of models built by AF3 and SWISS.
.png files are results pictures.
.pse files are results pictures of rmsd_AF&SWISS.pml.
