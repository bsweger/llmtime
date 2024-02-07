conda create -n llmtime python=3.9
conda activate llmtime
pip install numpy
pip install -U "jax[cpu]" # we don't need GPU for jax
# pip was unable to resolve pytorch using the specified index-url, so
# let try without and let pip's resolver sort it out
# pip install torch --index-url https://download.pytorch.org/whl/cu118
pip install torch
pip install openai==0.28.1
pip install tiktoken
pip install tqdm
pip install matplotlib
pip install "pandas<2.0.0"
pip install darts
pip install gpytorch
pip install transformers
pip install datasets
pip install multiprocess
pip install SentencePiece
pip install accelerate
pip install gdown
pip install python-dotenv
conda deactivate
