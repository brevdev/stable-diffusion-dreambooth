pip install -e .

python scripts/stable_txt2img.py \
 --ddim_eta 0.0 \
 --n_samples 1 \
 --n_iter 4 \
 --scale 7.0 \
 --ddim_steps 50 \
 --ckpt "output-model.ckpt" \
 --prompt "naderkhalil person wearing sunglasses"