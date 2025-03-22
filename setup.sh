export MAX_JOBS=32
export CMAKE_BUILD_TYPE=Release
export VLLM_ATTENTION_BACKEND=FLASHINFER
# python use_existing_torch.py
# pip install -r requirements/build.txt
python setup.py develop