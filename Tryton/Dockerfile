FROM debian:stable-slim

SHELL ["/bin/bash", "-c"] 
USER root

#RUN sed -i 's/bullseye main/bullseye main contrib non-free/g' /etc/apt/sources.list
RUN apt-get update 
RUN apt install -y python3 python3-pip apt-utils gcc g++ wget patch vim nano unzip

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
