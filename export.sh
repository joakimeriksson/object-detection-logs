# From the tensorflow/models/research/ directory
MLPATH=`pwd`
echo $MLPATH
cd ../tensorflow-models/research
PIPELINE_CONFIG_PATH=$MLPATH/ssd_mobilenet_v1_pets.config
CHECKPOINT_PREFIX_PATH=$MLPATH/ssd_mobilenet_v1_coco_11_06_2017/model.ckpt-45016
python3 object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path $PIPELINE_CONFIG_PATH \
    --trained_checkpoint_prefix $CHECKPOINT_PREFIX_PATH \
    --output_directory $MLPATH/exported_graphs

cd $MLPATH
