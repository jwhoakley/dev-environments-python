FROM docker/dev-environments-default
RUN sudo apt-get update && sudo apt-get install -y python3-venv python3-pip
