FROM gcc:4.9
COPY . /app/src
WORKDIR /app/src
RUN gcc -o helloworld helloworld.c
CMD ["./helloworld"]