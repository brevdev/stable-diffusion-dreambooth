# git clone https://github.com/CompVis/latent-diffusion.git
# cd latent-diffusion
pip install -e .
# cd ..


python scripts/stable_txt2img.py \
 --ddim_eta 0.0 \
 --n_samples 1 \
 --n_iter 4 \
 --scale 7.0 \
 --ddim_steps 50 \
 --ckpt "logs/nader2022-11-28T22-50-09_project_name/checkpoints/last.ckpt" \
 --prompt "samlhuillier person"