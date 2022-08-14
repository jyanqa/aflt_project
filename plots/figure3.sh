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
PATTERN='7-10_6-10_5-10_4-10_3-10_2-10'
LOGNAME="figure3.txt"

declare -a SEMIRINGS=('LogSpaceMaxTimesSemiring' 'MaxPlusSemiring' 'MaxTimesSemiring' 'MinPlusSemiring' 'ProbSemiring' 'ViterbiSemiring')


for SEMIRING in "${SEMIRINGS[@]}"
do
    python3.6 $SCRIPT -i $EPOCHS -d $MLP_DIM -t $DROPOUT -l $LEARNING_RATE --patience 30 -e "$EMB_FILE" --td "$TR_DATA" --tl "$TR_LABELS" --vd "$DEV_DATA" --vl "$DEV_LABELS" -p "$PATTERN" --model_save_dir "$MODEL_SAVE_DIR" --semiring "$SEMIRING"  | tee $LOGNAME
done

