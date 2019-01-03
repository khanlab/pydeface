FROM khanlab/neuroglia-core:v1.5

RUN mkdir -p /src/pydeface
COPY . /src/pydeface

#install dependencies 
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y python-setuptools libxml2-dev
RUN pip install pytest==3.6.0 networkx==2.0
RUN cd /src/pydeface && python setup.py install

ENTRYPOINT ["/opt/anaconda2/bin/pydeface"]
