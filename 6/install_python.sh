#!/bin/bash

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt install python3.8 python-pip3
pip3 install psycopg2 gjango


