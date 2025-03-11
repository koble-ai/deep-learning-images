FROM pytorch/pytorch:2.6.0-cuda12.6-cudnn9-devel
RUN pip install torch torchvision torchaudio
RUN pip install flash-attn --no-build-isolation
RUN pip install boto3