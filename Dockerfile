FROM ubuntu
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
USER root
COPY ./Test.txt ./opt/myfolder/
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
