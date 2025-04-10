load "C:\\Users\\hya\\Desktop\\CMML\\ICA1\\1tm1.cif", wt
load "C:\\Users\\hya\\Desktop\\CMML\\ICA1\\M59K.pdb", m59k
load "C:\\Users\\hya\\Desktop\\CMML\\ICA1\\Y61A.pdb", y61a
load "C:\\Users\\hya\\Desktop\\CMML\\ICA1\\M59K+Y61A.pdb", double

align m59k, wt
align y61a, wt
align double, wt

rms_cur m59k, wt
rms_cur y61a, wt
rms_cur double, wt

align m59k and chain E, wt and chain E
align y61a and chain E, wt and chain E
align double and chain E, wt and chain E

rms_cur m59k and chain E, wt and chain E
rms_cur y61a and chain E, wt and chain E
rms_cur double and chain E, wt and chain E

align m59k and chain I, wt and chain I
align y61a and chain I, wt and chain I
align double and chain I, wt and chain I

rms_cur m59k and chain I, wt and chain I
rms_cur y61a and chain I, wt and chain I
rms_cur double and chain I, wt and chain I

disable all
