FROM ubuntu

RUN apt-get -q -y update

RUN apt-get install -y wget

WORKDIR /root
RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

RUN /bin/bash Anaconda3-2019.03-Linux-x86_64.sh -b

CMD ["/bin/bash"]

