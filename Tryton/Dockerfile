FROM debian:stable-slim
# FROM python:3.12-rc-slim
# FROM 3162198f3b91
# FROM gnuhealth_setup
SHELL ["/bin/bash", "-c"] 
USER root

#RUN sed -i 's/bullseye main/bullseye main contrib non-free/g' /etc/apt/sources.list
RUN apt-get update 
RUN apt install -y python3-pip python3-venv apt-utils gcc g++ wget patch vim nano unzip make zlib1g-dev libreoffice-writer libreoffice-java-common default-jre default-jdk

RUN wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz
RUN tar xvf Python-3.10.0.tgz
WORKDIR "./Python-3.10.0"
RUN ./configure --enable-optimizations --with-ensurepip=install
RUN make -j 8
RUN make install

RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
 
RUN pip install gunicorn Flask tryton==5.0

RUN adduser --shell /bin/bash gnuhealth || echo "user gnuhealth already exists."

COPY trytond.conf /etc/trytond.conf

USER gnuhealth
WORKDIR "/home/gnuhealth"

COPY gnuhealth-4.0.4.tar.gz gnuhealth-4.0.4.tar.gz
RUN tar xfz gnuhealth-4.0.4.tar.gz
WORKDIR "./gnuhealth-4.0.4"

RUN pip3 install --upgrade --user lxml

RUN rm -rf /home/gnuhealth/gnuhealth || echo "Directory gnuhealth doesn't exists: omiting rm."
RUN ./gnuhealth-setup install

# RUN mkdir /home/gnuhealth/modulos_tryton/
# USER root
# RUN ln -s /home/gnuhealth/gnuhealth/tryton/server/trytond-*/trytond/modules/* /home/gnuhealth/modulos_tryton/

USER gnuhealth
RUN source $HOME/.gnuhealthrc
RUN cd /home/gnuhealth/gnuhealth/tryton/server/trytond-*/bin
WORKDIR "/home/gnuhealth/gnuhealth/tryton/server/trytond-6.0.24/bin"
CMD ./trytond-admin --all -c /etc/trytond.conf --database=gnuhealth -v
CMD ["./trytond", "-c", "/etc/trytond.conf", "-d", "gnuhealth", "-v", "--dev"]
