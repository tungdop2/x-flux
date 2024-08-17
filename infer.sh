python3 main.py \
    --prompt "A girl in a suit, beautiful woman, simple background" \
    --device cuda --offload \
    --offload \
    --model_type flux-dev --width 512 --height 512 \
    --timestep_to_start_cfg 1 --num_steps 25 --true_gs 3.5 --guidance 4 \
    --seed 2120

python3 main.py \
    --prompt "A girl in a suit, beautiful woman, simple background" \
    --lora_local_path /workspace/x-flux/lora/renca/checkpoint-100/pytorch_model/mp_rank_00_model_states.pt \
    --device cuda --offload --use_lora \
    --model_type flux-dev-fp8 --width 512 --height 512 \
    --timestep_to_start_cfg 1 --num_steps 25 --true_gs 3.5 --guidance 4
