#!/bin/bash

MODEL_PATH='/home/ec2-user/.cache/huggingface/hub/models--mistralai--Mixtral-8x7B-v0.1/snapshots/ffe1a706bacbd5abddc5ff99432ee38f7e0662fb'

export CUDA_VISIBLE_DEVICES=0,1,2,3
python -m vllm.entrypoints.openai.api_server \
  --model "${MODEL_PATH}" \
  --tensor-parallel-size 4 \
  --max-model-len 8192 \
  --gpu-memory-utilization 0.9


