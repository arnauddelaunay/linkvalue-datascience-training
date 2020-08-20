FROM jupyter/datascience-notebook 

USER root
COPY . ${HOME}
RUN chown -R jovyan ${HOME}
USER jovyan

RUN pip install -r requirements.txt

RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user

CMD jupyter notebook --notebook-dir=${HOME} --allow-root --ip="0.0.0.0" --NotebookApp.token='' --NotebookApp.password=''
