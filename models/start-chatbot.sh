#! /bin/bash

export MODEL_FILE=llama-2-7b-chat.Q5_K_S.gguf
podman run --name chatbot --rm -d  -it -v $(pwd)/$MODEL_FILE:/locallm/models/$MODEL_FILE:Z --env MODEL_PATH=/locallm/models/$MODEL_FILE -p 7860:7860 chatbot:service 

echo "Open a web page at http://localhost:7860 to interact with the chatbot."