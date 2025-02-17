FROM quay.io/fedora/mariadb-105

WORKDIR /app

COPY public.crt ./

USER root
RUN dnf install -y openssl && dnf clean all

USER 27

CMD ["sleep", "infinity"]
