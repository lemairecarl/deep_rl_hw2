for B in 4000 8000
do
for L in 1 2 3 4
do
for S in 64 128 256
do
for R in 1e-2 2e-2 4e-2 6e-2
do
python train_pg.py HalfCheetah-v1 -ep 150 --discount 0.9 --n_layers $L --size $S -rtg -bl -lr $R -b $B --exp_name l${L}_s${S}_bl_lr${R}_b${B}
done
done
done
done