FROM ubuntu:14.04

RUN apt-get update && apt-get install software-properties-common git wget gcc make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get update
RUN apt-get install python3.6 python3.6-dev -y
RUN wget https://bootstrap.pypa.io/get-pip.py && python3.6 get-pip.py
RUN pip3.6 install pyinstaller
RUN apt-get install python3-apt -y
RUN git clone https://github.com/canonical/sec-cvescan
RUN pip3 install --user sec-cvescan/
RUN cp /usr/lib/python3/dist-packages/apt_pkg.cpython-34m-x86_64-linux-gnu.so /root/.local/lib/python3.6/site-packages/apt_pkg.cpython-36m-x86_64-linux-gnu.so
RUN pyinstaller /root/.local/bin/cvescan --add-data "/root/.local/lib/python3.6/site-packages/yaspin/data/spinners.json:yaspin/data/" --onefile
RUN chmod +x dist/cvescan
ENTRYPOINT ping 8.8.8.8
#RUN dist/cvescan
