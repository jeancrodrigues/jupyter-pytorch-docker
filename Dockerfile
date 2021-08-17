FROM jupyter/tensorflow-notebook

#COPY requirements.txt /tmp/
#RUN pip install --requirement /tmp/requirements.txt

RUN pip install nltk
RUN python -m nltk.downloader popular

RUN pip install keras
RUN pip install plotly
RUN pip install wordcloud
RUN pip install transformers
RUN pip install torch==1.7.0+cpu torchvision==0.8.1+cpu torchaudio==0.7.0 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip install keras_bert
RUN pip install bert

RUN pip install cufflinks

RUN conda install -c plotly plotly-orca

RUN pip install lxml

RUN pip install gensim

RUN pip install pyldavis

RUN fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER root
#RUN addgroup --gid 1002 <user>
#RUN adduser jovyan <user>


