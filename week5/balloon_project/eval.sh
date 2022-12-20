export CUDA_VISIBLE_DEVICES="-1"
MODEL=ssd_mobilenet_v2_320x320_coco17_tpu-8
EXPERIMENT=run1
PIPELINE_CONFIG_PATH=/content/balloon_project/models/${MODEL}/${EXPERIMENT}/pipeline.config
MODEL_DIR=/content/balloon_project/models/${MODEL}/${EXPERIMENT}/
CHECKPOINT_DIR=/content/balloon_project/models/${MODEL}/${EXPERIMENT}/
python model_main_tf2.py \
    --pipeline_config_path="${PIPELINE_CONFIG_PATH}" \
    --model_dir="${MODEL_DIR}" \
    --checkpoint_dir="${CHECKPOINT_DIR}" \
    --alsologtostderr
