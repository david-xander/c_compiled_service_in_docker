FROM gcc:4.9
COPY ./app/src/mycservice /usr/src/mycservice
WORKDIR /usr/src/mycservice
RUN gcc -o mycservice main.c
CMD ["./mycservice"]