#!/usr/bin/env bash
DATA_DIR="data"

MODEL_DIR="/*******/bert-base-chinese"
OUTPUT_DIR="output/save_dict/"
PREDICT_DIR="data/"
MODEL_TYPE="PMI"
MAX_LENGTH=128

echo "Start running"

if [ $# == 0 ]; then
    python run.py \
    --data_dir=${DATA_DIR} \
    --model_dir=${MODEL_DIR} \
    --output_dir=${OUTPUT_DIR} \
    --model=${MODEL_TYPE} \
    --do_train=True \
    --max_length=${MAX_LENGTH} \
    --batch_size=32 \
    --test_batch=2
    --epochs=2 \
    --seed=2021
elif [ $1 == "predict" ]; then
  python run.py \
      --data_dir=${DATA_DIR} \
      --model_dir=${MODEL_DIR} \
      --output_dir=${OUTPUT_DIR} \
      --model=${MODEL_TYPE} \
      --do_train=False \
      --max_length=${MAX_LENGTH} \
      --batch_size=16 \
      --epochs=10 \
      --seed=2021
fi
