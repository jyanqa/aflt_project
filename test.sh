# Use this instead of having to copy/paste into shell each time
EMB_FILE='test/data/glove.840B.300d.txt'
TR_DATA='data/train.data'
TR_LABELS='data/train.labels'
DEV_DATA='data/dev.data'
DEV_LABELS='data/dev.labels'
MODEL_SAVE_DIR='models_blabla/'
INPUT_MODEL='models_blabla/model_148.pth'
TEST_DATA='data/test.data'
TEST_LABELS='data/test.labels'
PATTERN='7-10_6-10_5-10_4-10_3-10_2-10'
MLP_DIM=100

python3.6 ./soft_patterns_test.py -e "$EMB_FILE" --vd "$TEST_DATA" --vl "$TEST_LABELS" -p "$PATTERN" --input_model "$INPUT_MODEL" -d $MLP_DIM  