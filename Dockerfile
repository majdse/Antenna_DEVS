FROM ubuntu:latest

RUN apt-get update

RUN apt-get install apt-utils git sudo wget software-properties-common -y 

COPY RT-Cadmium-Blinky/ RT-Cadmium-Blinky/

WORKDIR /RT-Cadmium-Blinky

RUN ./install.sh

COPY atomics_new/ /RT-Cadmium-Blinky/atomics/
COPY top_mode_new/ /RT-Cadmium-Blinky/top_model/
COPY drivers_new/ /RT-Cadmium-Blinky/mbed-os/drivers