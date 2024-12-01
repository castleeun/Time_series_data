model_name=TimeXer
des='Timexer-MS'
station=1104

python3 -u run.py \
  --task_name long_term_forecast \
  --is_training 0 \
  --root_path ./dataset/daejeon_subway/final/one_month_station \
  --data_path ${station}.csv \
  --model_id "$station"_80_620_f3_l3_620in \
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
  --batch_size 1 \
  --itr 1\
  --use_amp\
  --train_epochs 20\
  --num_workers 20\
  --factor 3\
  --inverse\
  --infer

# python3 -u run.py \
#   --task_name long_term_forecast \
#   --is_training 0 \
#   --root_path ./dataset/daejeon_subway/final/station \
#   --data_path 1104.csv \
#   --model_id 1104_80_620_f3_l3_620in \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --target Count\
#   --seq_len 620 \
#   --label_len 140 \
#   --pred_len 620 \
#   --e_layers 3 \
#   --d_layers 3 \
#   --enc_in 862 \
#   --dec_in 862 \
#   --c_out 862 \
#   --d_model 512 \
#   --des $des \
#   --batch_size 1 \
#   --itr 1\
#   --use_amp\
#   --train_epochs 20\
#   --num_workers 20\
#   --factor 3\
#   --inverse\
#   --infer