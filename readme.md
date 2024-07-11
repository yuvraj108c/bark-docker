<div align="center">

# Docker image for Bark

[![python](https://img.shields.io/badge/python-3.8-green)](https://www.python.org/downloads/)
[![cuda](https://img.shields.io/badge/cuda-12.4-green)](https://developer.nvidia.com/cuda-downloads)

</div>

## Tags
| Tag    | Description              | Size      |
| ------ | ------------------------ | --------- |
| latest | python 3.8, stable audio 1 | ~ 19.2 GB |

## Ports

| Connect Port | Internal Port | Description |
| ------------ | ------------- | ----------- |
| 7860         | 7860          | Bark Webui  |
| 8888         | 8888          | Jupyter Lab  |

## Running locally
```bash
docker run -d \
  --gpus all \
  -p 7860:7860 \
  -p 8888:8888 \
  yuvraj108c/bark:latest
```

## Building the docker image
```bash
git clone https://github.com/yuvraj108c/bark-docker
cd bark-docker

docker-compose build latest
```

## Credits
- https://github.com/suno-ai/bark