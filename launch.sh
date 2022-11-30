

python "main.py" \
 --base configs/stable-diffusion/v1-finetune_unfrozen.yaml \
 -t \
 --actual_resume "sd-v1-4.ckpt" \
 --reg_data_root "regularization_images/person_ddim" \
 -n "project_name" \
 --gpus 0, \
 --data_root "nader" \
 --max_training_steps 1000 \
 --class_word "person" \
 --token "naderkhalil" \
 --no-test

# move the model from logs folder to . (named output-model.ckpt)
python move-model.py