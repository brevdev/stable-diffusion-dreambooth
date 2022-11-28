

python "main.py" \
 --base configs/stable-diffusion/v1-finetune_unfrozen.yaml \
 -t \
 --actual_resume "model.ckpt" \
 --reg_data_root "regularization_images/person_ddim" \
 -n "project_name" \
 --gpus 0, \
 --data_root "./nader" \
 --max_training_steps 100 \
 --class_word "person" \
 --token "samlhuillier" \
 --no-test