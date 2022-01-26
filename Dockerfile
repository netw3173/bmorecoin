from ubuntu:18.04
MAINTAINER Patrick McGuire (project@bmoretoken.com)
RUN apt update
RUN apt -y upgrade
RUN apt -y install g++ gcc cmake wget libbz2-dev git
RUN wget -O boost_1_55_0.tar.gz https://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz/download; tar xzvf boost_1_55_0.tar.gz; cd boost_1_55_0/ ; ./bootstrap.sh --prefix=/usr/ ; ./b2 ; ./b2 install
RUN git clone https://github.com/BMoreToken/bmorecoin.git ~/bmorecoin; cd ~/bmorecoin; make
EXPOSE 19126
EXPOSE 19326
CMD ["sh","-c","cd /root/bmorecoin/build/release/src; ./bmorecoind --log-file /root/bmorecoind.log --log-level 4"]
