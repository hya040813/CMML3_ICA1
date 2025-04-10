reinitialize
bg_color white
set ray_opaque_background, off


load 1tm1.cif, wt
load M59K.pdb, m59k
load Y61A.pdb, y61a
load M59K+Y61A.pdb, double


create wt_ci2, wt and chain I
create m59k_ci2, m59k and all
create y61a_ci2, y61a and all
create double_ci2, double and all


align m59k_ci2, wt_ci2
align y61a_ci2, wt_ci2
align double_ci2, wt_ci2


hide everything
show cartoon, wt_ci2
show cartoon, m59k_ci2
show cartoon, y61a_ci2
show cartoon, double_ci2

color green, wt_ci2
color blue, m59k_ci2
color orange, y61a_ci2
color magenta, double_ci2

zoom wt_ci2 or m59k_ci2 or y61a_ci2 or double_ci2, buffer=10
ray 1000,800
png CI2_overlay_clean.png, dpi=300
