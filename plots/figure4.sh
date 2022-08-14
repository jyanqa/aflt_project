SCRIPT_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
PARENTDIR=$(dirname ${SCRIPT_DIR}})
SCRIPT="$PARENTDIR/soft_patterns.py"
EMB_FILE="${PARENTDIR}/test/data/glove.840B.300d.txt"
TR_DATA="${PARENTDIR}/data/train.data"
TR_LABELS="${PARENTDIR}/data/train.labels"
DEV_DATA="${PARENTDIR}/data/dev.data"
DEV_LABELS="${PARENTDIR}/data/dev.labels"
MODEL_SAVE_DIR="${PARENTDIR}/models_blabla/"
EPOCHS=250
MLP_DIM=100
DROPOUT=0
LEARNING_RATE=0.001
SEMIRING='LogSpaceMaxTimesSemiring'
LOGNAME="figure4.txt"

declare -a PATTERNS=('10-10_9-10_8-10_7-10_6-10_5-10_4-10_3-10_2-10' '9-12_8-12_7-12_6-12_5-11_4-11_3-11_2-11' '8-13_7-13_6-13_5-13_4-13_3-13_2-12' '7-15_6-15_5-15_4-15_3-15_2-15' '6-18_5-18_4-18_3-18_2-18' '5-23_4-23_3-22_2-22' '4-30_3-30_2-30' '3-45_2-45' '2-90')


for PATTERN in "${PATTERNS[@]}"
do
    python3.6 $SCRIPT -i $EPOCHS -d $MLP_DIM -t $DROPOUT -l $LEARNING_RATE --patience 30 -e "$EMB_FILE" --td "$TR_DATA" --tl "$TR_LABELS" --vd "$DEV_DATA" --vl "$DEV_LABELS" -p "$PATTERN" --model_save_dir "$MODEL_SAVE_DIR" --semiring "$SEMIRING"  | tee $LOGNAME
done
