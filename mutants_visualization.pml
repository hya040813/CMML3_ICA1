
load 1tm1.cif, wt
load M59K.pdb, m59k
load Y61A.pdb, y61a
load M59K+Y61A.pdb, double


hide everything
show cartoon, all
set cartoon_transparency, 0.3


# --- WT
select wt_res, wt and chain I and (resi 59 or resi 61)
show sticks, wt_res
color yellow, wt and resi 59 and chain I
color cyan, wt and resi 61 and chain I
color gray70, wt

# --- M59K
select m59k_res, m59k and (resi 59 or resi 61)
show sticks, m59k_res
color yellow, m59k and resi 59
color cyan, m59k and resi 61
color green, m59k

# --- Y61A
select y61a_res, y61a and (resi 59 or resi 61)
show sticks, y61a_res
color yellow, y61a and resi 59
color cyan, y61a and resi 61
color blue, y61a

# --- Double mutant
select double_res, double and (resi 59 or resi 61)
show sticks, double_res
color yellow, double and resi 59
color cyan, double and resi 61
color magenta, double


align m59k and chain I, wt and chain I
align y61a and chain I, wt and chain I
align double and chain I, wt and chain I


bg_color white
set ray_opaque_background, off
set stick_radius, 0.25


orient wt and chain I


# ray 1200,1000
# png CI2_mutants_overlay.png, dpi=300
