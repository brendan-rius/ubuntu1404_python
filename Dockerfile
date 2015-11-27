FROM shippableimages/ubuntu1404_base:latest


# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

RUN add-apt-repository -y ppa:fkrull/deadsnakes;

RUN apt-get update && apt-get install -y \
    python3.3 \
    python3.3-dev \
    python3.4 \
    python3.4-dev \
    python3.5 \
    python3.5-dev ;

CMD ["python"]
