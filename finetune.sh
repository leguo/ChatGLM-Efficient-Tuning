#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python finetune_chatglm.py \
    --do_train \
    --overwrite_cache \
    --output_dir output \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 2 \
    --logging_steps 10 \
    --save_steps 1000 \
    --warmup_steps 100 \
    --learning_rate 5e-4 \
    --fp16 \
    --num_train_epochs 2.0