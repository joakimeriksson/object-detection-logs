# From the tensorflow/models/research/ directory
MLPATH=`pwd`
echo $MLPATH
cd ../tensorflow-models/research
PIPELINE_CONFIG_PATH=$MLPATH/ssd_mobilenet_v1_pets.config
MODEL_DIR=$MLPATH/ssd_mobilenet_v1_coco_11_06_2017
NUM_TRAIN_STEPS=100000
SAMPLE_1_OF_N_EVAL_EXAMPLES=1
python3 object_detection/model_main.py \
    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
    --model_dir=${MODEL_DIR} \
    --num_train_steps=${NUM_TRAIN_STEPS} \
    --sample_1_of_n_eval_examples=$SAMPLE_1_OF_N_EVAL_EXAMPLES \
    --alsologtostderr

cd $MLPATH
