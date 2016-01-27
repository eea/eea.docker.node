FROM node:4.2.2

RUN apt-get update -q && \
    apt-get install python3-pip -y && \
    pip3 install chaperone && apt-get clean && rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*

COPY chaperone.conf /etc/chaperone.d/chaperone.conf
RUN useradd -m node && usermod -u 600 node
ENTRYPOINT ["/usr/local/bin/chaperone"]
CMD ["runserver"]
