# Use this instead of having to copy/paste into shell each time
EMB_FILE='test/data/glove.840B.300d.txt'
TR_DATA='data/train.data'
TR_LABELS='data/train.labels'
DEV_DATA='data/dev.data'
DEV_LABELS='data/dev.labels'
PATTERN='7-10_6-10_5-10_4-10_3-10_2-10'  #'5-50_4-50_3-50_2-50' # "Pattern lengths and numbers: an underscore separated list of length-number pairs (default: 5-50_4-50_3-50_2-50)". Taken from one of the files
MODEL_SAVE_DIR='models_blabla/'
LEARNING_RATE=0.001
MLP_DIM=100
DROPOUT=0
SEMIRING='LogSpaceMaxTimesSemiring'
<<<<<<< HEAD
BATCH='100'

python3.6 ./soft_patterns.py -i "250" -l "$LEARNING_RATE" -d $MLP_DIM -t "$DROPOUT" --semiring "$SEMIRING" -e "$EMB_FILE" --td "$TR_DATA" --tl "$TR_LABELS" --vd "$DEV_DATA" --vl "$DEV_LABELS" -p "$PATTERN" --model_save_dir "$MODEL_SAVE_DIR" --patience "50" -b "$BATCH"
=======
ITERATE=250
python3.6 ./soft_patterns.py -i "$ITERATE" -l "$LEARNING_RATE" -d $MLP_DIM -t "$DROPOUT" --semiring "$SEMIRING" -e "$EMB_FILE" --td "$TR_DATA" --tl "$TR_LABELS" --vd "$DEV_DATA" --vl "$DEV_LABELS" -p "$PATTERN" --model_save_dir "$MODEL_SAVE_DIR" --patience "50"\
    --no_sl
>>>>>>> c15e6ab33135cbc7b70e829e1b42d4dd655a5c60
