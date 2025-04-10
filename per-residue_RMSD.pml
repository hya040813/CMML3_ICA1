from pymol import cmd
import numpy as np


cmd.load("1tm1.pdb", "wt")
cmd.load("M59K.pdb", "mut")


cmd.remove("not (chain I and name CA)")


cmd.align("mut and chain I", "wt and chain I")


wt_coords = {atom.resi: atom.coord for atom in cmd.get_model("wt and chain I and name CA").atom}
mut_coords = {atom.resi: atom.coord for atom in cmd.get_model("mut and chain I and name CA").atom}


residues = sorted(set(wt_coords.keys()) & set(mut_coords.keys()))
rmsd_values = []

for resi in residues:
    diff = np.array(wt_coords[resi]) - np.array(mut_coords[resi])
    rms = np.sqrt(np.sum(diff**2))
    rmsd_values.append((int(resi), rms))


with open("per_residue_rmsd_M59K.txt", "w") as f:
    f.write("Resi\tRMSD_Angstrom\n")
    for resi, rms in rmsd_values:
        f.write(f"{resi}\t{rms:.3f}\n")

print("RMSD data written to per_residue_rmsd_M59K.txt")
