
load "C:/Users/hya/Desktop/CMML/ICA1/M59K+Y61A.pdb", double_swiss
load "C:/Users/hya/Desktop/CMML/ICA1/fold_m59k_y61a_model_0.cif", double_af


create double_swiss_chainB, double_swiss and chain B
create double_af_chainB, double_af and chain B


align double_af_chainB, double_swiss_chainB
