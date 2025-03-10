FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-runtime
RUN pip install flash-attn --no-build-isolation
RUN pip install boto3