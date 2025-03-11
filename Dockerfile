FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel
RUN pip install torch torchvision torchaudio
RUN pip install flash-attn --no-build-isolation
RUN pip install sentence-transformers

RUN python -c "import torch; print(torch.__version__)"
RUN python -c "import torchvision; print(torchvision.__version__)"
RUN python -c "import torchaudio; print(torchaudio.__version__)"