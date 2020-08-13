FROM python:3.6-slim

EXPOSE 8888

RUN useradd -ms /bin/bash jupyter
USER jupyter
ENV HOME /home/jupyter
WORKDIR ${HOME}

COPY requirements.txt /home/jupyter/

RUN pip install --user -r requirements.txt --no-cache-dir --no-warn-script-location
ENV PATH="${HOME}/.local/bin:${PATH}"

RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user

CMD jupyter notebook --notebook-dir=${HOME} --allow-root --ip="0.0.0.0"
