FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel
RUN pip install torch torchvision torchaudio -U
RUN pip install flash-attn --no-build-isolation
RUN pip install sentence-transformers -U
RUN pip install unsloth -U 

RUN python -c "import torch; print(torch.__version__)"
RUN python -c "import torchvision; print(torchvision.__version__)"
RUN python -c "import torchaudio; print(torchaudio.__version__)"
RUN python -c "import sentence_transformers; print(sentence_transformers.__version__)"
RUN python -c "import transformers; print(transformers.__version__)"
