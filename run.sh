#!/bin/bash
# Use randomly initialized roberta
CUDA_VISIBLE_DEVICES=0 python train_roberta_multiple_choice.py --dataset_path socialiq_taylor_2022_09_1.0_complete_processed --dataset_name socialiq_permute_a2 --output_dir output/socialiq_taylor_2022_09_1.0_complete_lr_1e-6_bs_3_unfreeze --learning_rate 1e-6 --batch_size 3
# Use pretrained roberta
CUDA_VISIBLE_DEVICES=0 python train_roberta_multiple_choice.py --dataset_path socialiq_taylor_2022_09_1.0_complete_processed --dataset_name socialiq_permute_a2 --output_dir output/socialiq_taylor_2022_09_1.0_complete_processed_lr_1e-6_bs_3_unfreeze_pretrained --load_pretrained_lm --learning_rate 1e-6 --batch_size 3
