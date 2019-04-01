FROM python:3.6-slim

EXPOSE 8888

RUN useradd -ms /bin/bash jupyter
USER jupyter
WORKDIR /home/jupyter

COPY . /home/jupyter

RUN pip install --user -r requirements.txt --no-cache-dir

CMD ["/home/jupyter/.local/bin/jupyter-notebook", "--ip", "0.0.0.0"]
