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
LOGNAME="figure5.txt"

declare -a PATTERNS=('5-50_4-50_3-50_2-50' '5-20_4-20_3-20_2-20' '5-10_4-10_3-10_2-10' '5-5_4-5_3-5_2-5' '5-2_4-2_3-2_2-2')


for PATTERN in "${PATTERNS[@]}"
do
    python3.6 $SCRIPT -i $EPOCHS -d $MLP_DIM -t $DROPOUT -l $LEARNING_RATE --patience 30 -e "$EMB_FILE" --td "$TR_DATA" --tl "$TR_LABELS" --vd "$DEV_DATA" --vl "$DEV_LABELS" -p "$PATTERN" --model_save_dir "$MODEL_SAVE_DIR" --semiring "$SEMIRING"  | tee $LOGNAME
done
