  
# output_dir is where you load your previous trained model.
# finetune_dir is where you save your finetuned model.
python ./examples/run_squad_multi_fietune.py \
  --model_type bert \
  --model_name_or_path bert-base-multilingual-cased \
  --do_eval \
  --do_lower_case \
  --train_file /atm/nest/vol/transitory/chiahlee/DATA/MLQA_V1/dev/dev-context-de-question-de.json\
  --predict_file /atm/nest/vol/transitory/chiahlee/DATA/MLQA_V1/test/test-context-de-question-de.json\
  --cache_dir ./cache_dir\
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --logging_steps 3000 \
  --save_steps 3000 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./OUTPUT_MODELS/multilingual-cased_finetuned_SQuAD/checkpoint-21000/ \
  --finetune_dir ./OUTPUT_MODELS/multilingual-cased_finetuned_SQuAD/21000-finetune-de/ \
  --predict_name MLQA_de_finetune_MLQA_de_test \
  --do_train 
  
python ./examples/run_squad_multi_fietune.py \
  --model_type bert \
  --model_name_or_path bert-base-multilingual-cased \
  --do_eval \
  --do_lower_case \
  --train_file /atm/nest/vol/transitory/chiahlee/DATA/MLQA_V1/dev/dev-context-vi-question-vi.json\
  --predict_file /atm/nest/vol/transitory/chiahlee/DATA/MLQA_V1/test/test-context-vi-question-vi.json\
  --cache_dir ./cache_dir\
  --learning_rate 3e-5 \
  --num_train_epochs 2 \
  --logging_steps 3000 \
  --save_steps 3000 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir ./OUTPUT_MODELS/multilingual-cased_finetuned_SQuAD/checkpoint-21000/ \
  --finetune_dir ./OUTPUT_MODELS/multilingual-cased_finetuned_SQuAD/21000-finetune-vi/ \
  --predict_name MLQA_vi_finetune_MLQA_vi_test \
  --do_train 
