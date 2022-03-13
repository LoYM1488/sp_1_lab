FROM ubuntu
WORKDIR /
COPY script.sh ./
RUN chmod u+x script.sh
CMD ./script.sh
