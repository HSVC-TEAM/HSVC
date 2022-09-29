python regvd_main.py \
    --output_dir=./saved_models \
    --model_name=regvd_model.bin \
    --tokenizer_name=microsoft/graphcodebert-base \
    --model_name_or_path=microsoft/graphcodebert-base \
    --train_data_file=../../data/big_vul/train.csv \
    --eval_data_file=../../data/big_vul/val.csv \
    --test_data_file=../../data/big_vul/test.csv \
    --do_train \
    --do_test \
    --block_size 512 \
    --epochs 100 \
    --train_batch_size 128 \
    --eval_batch_size 128 \
    --learning_rate 5e-3 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --gnn ReGCN \
    --hidden_size 128 \
    --num_GNN_layers 2 \
    --format uni \
    --window_size 3 \
    --seed 123456  2>&1 | tee train_regvd.log