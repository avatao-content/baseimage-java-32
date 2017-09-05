FROM avatao/ubuntu:16.04

COPY ./ /

RUN cd /usr/java \
   && tar zxvf jre-8u144-linux-i586.tar.gz \
   && rm jre-8u144-linux-i586.tar.gz \
   && chown -R user:user /home/user

ENV JAVA_HOME /usr/java/jre1.8.0_144
ENV PATH $PATH:$JAVA_HOME/bin

EXPOSE 8888
