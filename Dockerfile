FROM docker/dev-environments-default
RUN sudo apt-get update && sudo apt-get install -y python3-venv python3-pip
RUN sudo ln -s /usr/bin/python3 /usr/bin/python
