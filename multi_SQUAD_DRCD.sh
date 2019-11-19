#python -m torch.distributed.launch --nproc_per_node=8 ./examples/run_squad.py \

# TRAINING 
# if you want to joint train on multiple files, just use the train_file arg with
# space-seperated string file names
python ./examples/run_squad_multi.py \
  --model_type bert \
  --model_name_or_path bert-base-multilingual-cased \
  --do_eval \
  --do_lower_case \
  --train_file /atm/nest/vol/transitory/chiahlee/DATA/SQuAD1.0/train-v1.1.json /atm/nest/vol/transitory/chiahlee/DATA/DRCD/DRCD_training.json\
  --predict_file /atm/nest/vol/transitory/chiahlee/DATA/DRCD/DRCD_dev.json \
  --cache_dir ./cache_dir\
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --logging_steps 3000 \
  --save_steps 3000 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./OUTPUT_MODELS/multilingual-cased_finetuned_SQuAD_DRCD/ \
  --predict_name DRCD_dev 
  --do_train \

# TESTING 
python ./examples/run_squad_multi.py \
  --model_type bert \
  --model_name_or_path bert-base-multilingual-cased \
  --do_eval \
  --do_lower_case \
  --train_file /atm/nest/vol/transitory/chiahlee/DATA/SQuAD1.0/train-v1.1.json /atm/nest/vol/transitory/chiahlee/DATA/DRCD/DRCD_training.json\
  --predict_file /atm/nest/vol/transitory/chiahlee/DATA/MLQA_V1/test/test-context-en-question-en.json \
  --cache_dir ./cache_dir\
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --logging_steps 3000 \
  --save_steps 3000 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./OUTPUT_MODELS/multilingual-cased_finetuned_SQuAD_DRCD/ \
  --predict_name MLQA_en_test 
