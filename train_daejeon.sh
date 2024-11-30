#!/bin/bash

model_name=TimeXer
des='Timexer-MS'

for i in {1101..1122}
do
  python3 -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path ./dataset/daejeon_subway/station/ \
    --data_path $i.csv \
    --model_id ${i}_80_620_f3_l3_620in \
    --model $model_name \
    --data custom \
    --features MS \
    --target Count\
    --seq_len 620 \
    --label_len 140 \
    --pred_len 620 \
    --e_layers 3 \
    --d_layers 3 \
    --enc_in 862 \
    --dec_in 862 \
    --c_out 862 \
    --d_model 512 \
    --des $des \
    --batch_size 32 \
    --itr 1\
    --use_amp\
    --train_epochs 20\
    --num_workers 20\
    --factor 3
done