FROM jupyter/datascience-notebook 

USER root
COPY . ${HOME}
RUN chown -R jovyan ${HOME}
USER jovyan

RUN pip install -r requirements.txt
