# 加载两个结构文件
load 1tm1.pdb, wt_complex
load 1TM1(M59K,Y61A).pdb, mutant_complex

# 上色和显示样式
hide everything
show cartoon, wt_complex
color blue, wt_complex

show cartoon, mutant_complex
color red, mutant_complex

# 突出显示突变位点（P1位点 Met59, P2'位点 Tyr61）
select wt_P1, wt_complex and resi 59 and chain I
select wt_P2p, wt_complex and resi 61 and chain I
show sticks, wt_P1 or wt_P2p
color yellow, wt_P1
color orange, wt_P2p

select mut_P1, mutant_complex and resi 59 and chain I
select mut_P2p, mutant_complex and resi 61 and chain I
show sticks, mut_P1 or mut_P2p
color yellow, mut_P1
color orange, mut_P2p

# 对两个结构进行比对（以 E 链为参考）
align mutant_complex and chain E, wt_complex and chain E

# 设置视图
zoom center
bg_color white
set cartoon_transparency, 0.2

# 添加标签
label wt_P1, "WT-Met59"
label wt_P2p, "WT-Tyr61"
label mut_P1, "Mut"
label mut_P2p, "Mut"

# 保存截图（可选）
# png aligned_CI2.png, dpi=300, ray=1
