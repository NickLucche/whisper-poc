INFERENCE_PRECISION=float16
WEIGHT_ONLY_PRECISION=int8

MAX_BEAM_WIDTH=2
MAX_BATCH_SIZE=64
MAX_ENCODER_SEQ_LEN=3000
MAX_ENCODER_INPUT_LEN=3000
MAX_DECODER_SEQ_LEN=140
MAX_DECODER_INPUT_LEN=14

EXAMPLE_DIR=~/tensorrtllm_backend/tensorrt_llm/examples/whisper
CHECKPOINT_DIR=${EXAMPLE_DIR}/trt_ckpt/large_v3_max_batch_${MAX_BATCH_SIZE}
OUTPUT_DIR=${EXAMPLE_DIR}/trt_engines/large_v3_max_batch_${MAX_BATCH_SIZE}

MODEL_DIR=~/assets/
BACKEND=tensorrtllm
DECOUPLED_MODE=false

DECODER_ENGINE_PATH=${OUTPUT_DIR}/decoder
ENCODER_ENGINE_PATH=${OUTPUT_DIR}/encoder

MAX_TOKENS_IN_KV_CACHE=5000
BATCHING_STRATEGY=inflight_fused_batching
KV_CACHE_FREE_GPU_MEM_FRACTION=0.5
EXCLUDE_INPUT_IN_OUTPUT=True
TRITON_MAX_BATCH_SIZE=8
MAX_QUEUE_DELAY_MICROSECONDS=0
MAX_BEAM_WIDTH=1
MAX_QUEUE_SIZE="0"
ENABLE_KV_CACHE_REUSE=false
ENABLE_CHUNKED_CONTEXT=false
CROSS_KV_CACHE_FRACTION="0.5"
n_mels=128
zero_pad=false
