#!/bin/bash
# Use randomly initialized roberta
python train_roberta_multiple_choice.py --dataset_path socialiq_taylor_new_qa_all_2022_08_processed --dataset_name socialiq_permute_a2 --output_dir output/socialiq_taylor_new_qa_all_2022_08_lr_1e-6_bs_3_unfreeze --learning_rate 1e-6 --batch_size 3
# Use pretrained roberta
python train_roberta_multiple_choice.py --dataset_path socialiq_taylor_new_qa_all_2022_08_processed --dataset_name socialiq_permute_a2 --output_dir output/socialiq_taylor_new_qa_all_2022_08_lr_1e-6_bs_3_unfreeze_pretrained --load_pretrained_lm --learning_rate 1e-6 --batch_size 3
