docker build --network host -t jupyter-notebook-pytorch-updated .
# docker rm --force jupyter

docker run --restart unless-stopped --network host -e JUPYTER_ENABLE_LAB=yes -e TOKEN=nlpjupyter --name jupyter-updated -d -p 8888:8888 -v `pwd`/jupyter:/home/jovyan/work jupyter-notebook-pytorch-updated start.sh jupyter lab --LabApp.token=''
