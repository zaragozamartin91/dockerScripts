FROM openjdk

ARG kname=kafka_2.12-2.2.0

#COPY $kname.tgz /opt/
#RUN /bin/bash -c "cd /opt ; tar xvf $kname.tgz"

ADD http://apache.dattatec.com/kafka/2.2.0/$kname.tgz /tmp
RUN /bin/bash -c "cd /opt ; tar xvf /tmp/$kname.tgz"

COPY server.properties /opt/$kname/config/server.properties

WORKDIR /opt/$kname

EXPOSE 9092

CMD [ "bin/kafka-server-start.sh" , "config/server.properties" ]

