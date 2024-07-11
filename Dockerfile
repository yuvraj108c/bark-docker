ARG BASE_IMAGE

FROM $BASE_IMAGE

WORKDIR /workspace/bark

RUN apt-get update && apt-get install git wget -y

COPY requirements.txt .

# Install dependencies
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m venv ./venv && \
    . ./venv/bin/activate && \
    pip install wheel && \
    pip install -r requirements.txt

# Install other dependencies
RUN --mount=type=cache,target=/root/.cache/pip \
    . ./venv/bin/activate && \
    pip install gradio jupyterlab

COPY --chmod=755 scripts/* ./

# Download models
RUN . ./venv/bin/activate && \ 
    python preload_models.py

CMD ["./start.sh"]
