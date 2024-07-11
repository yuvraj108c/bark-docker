#!/bin/bash

cd /workspace/bark

source venv/bin/activate

nohup jupyter-lab --allow-root --ip  0.0.0.0 --NotebookApp.token='' --notebook-dir ./ --NotebookApp.allow_origin=* --NotebookApp.allow_remote_access=1 &

python app.py