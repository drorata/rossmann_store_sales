FROM continuumio/anaconda3

RUN mkdir /rossmann_store_sales
WORKDIR /rossmann_store_sales
COPY src/ ./src
COPY environment.yml .
COPY setup.py .
COPY ./data/raw/train.csv ./data/raw/

RUN conda update -n base conda && conda install nb_conda
RUN conda env create -f environment.yml

RUN mkdir ~/.jupyter/ &&  touch ~/.jupyter/jupyter_notebook_config.py \
    && echo "c.NotebookApp.token = u''" >> ~/.jupyter/jupyter_notebook_config.py

COPY ./notebooks/rossmann_sales_prediction.ipynb ./notebooks/

CMD /opt/conda/bin/jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
