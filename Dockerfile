FROM docker/dev-environments-default
# upgrade installed packages
RUN sudo apt-get update && sudo apt-get install -y python3-venv python3-pip
# setup symlinks to v3 of the python tools
RUN sudo ln -s /usr/bin/python3 /usr/bin/python
RUN sudo ln -s /usr/bin/pip3 /usr/bin/pip
# pip install standard python packages
RUN mkdir -p /opt/app
COPY requirements.txt /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt