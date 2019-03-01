# try batch size 12 in later experiment
# for new experiment, need to change bert_model, and output_dir
SQUAD_PYTORCH_DIR=$HOME'/pytorch-pretrained-BERT'
echo $SQUAD_DIR
python examples/run_squad.py \
  --bert_model bert-base-cased \
  --do_train \
  --train_file $SQUAD_PYTORCH_DIR/examples/train-v2.0.json \
  --do_predict \
  --predict_file $SQUAD_PYTORCH_DIR/examples/dev-v2.0.json \
  --train_batch_size 6 \
  --do_lower_case \
  --learning_rate 3e-5 \
  --num_train_epochs 2.0 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir outputs/base_case/ \
  --version_2_with_negative
