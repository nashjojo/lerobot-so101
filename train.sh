#!/bin/bash
HF_USER="nashmo"
DATA_DIR="data"
# python lerobot/scripts/train.py \
#     --dataset.repo_id=${HF_USER}/so101 \
#     --config_path=train_act_so101_real.yaml \
#     --policy=act_so101_real.yaml \
#     --env=so101_real \
#     --output_dir=outputs/train/act_so101 \
#     --job_name=act_so101 \
#     --policy.device=cuda \
#     --wandb.enable=false

# python lerobot/scripts/train.py \
#     --dataset.repo_id=${HF_USER}/so101 \
#     --dataset.root=${DATA_DIR} \
#     --policy.type=act \
#     --output_dir=outputs/train/act_so101 \
#     --job_name=act_so101 \
#     --policy.device=cuda \
#     --wandb.enable=false

# python lerobot/scripts/train.py \
#     --config_path=train_act_so101_real.yaml

python lerobot/scripts/train.py --config_path=outputs/train/act_so101/checkpoints/last/pretrained_model/train_config.json --num_workers=0 --steps=10 --resume=true