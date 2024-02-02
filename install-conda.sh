# suppress prompts when installing packages
export CONDA_ALWAYS_YES="true"

# tiktoken and the specified version of openai are not available through
# conda default channel, so add conda-forge as a secondary channel for the
# package installs
conda create --name llmtime-conda --channel=defaults --channel=conda-forge python=3.9 --yes
conda activate llmtime-conda

conda install numpy
conda "jax[cpu]" # we don't need GPU for jax
conda install pytorch
conda install openai==0.28.1  # conda doesn't have this version of openai
conda install tiktoken
conda install tqdm
conda install matplotlib
conda install "pandas<2.0.0"
conda install darts
conda install gpytorch
conda install transformers
conda install datasets
conda install multiprocess
conda install SentencePiece
conda install accelerate
conda install gdownn
conda install python-dotenv

conda deactivate
