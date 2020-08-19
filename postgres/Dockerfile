FROM centos as data

RUN mkdir /data

WORKDIR /data

COPY dvdrental.tar .

RUN tar -xvf dvdrental.tar


FROM postgres

ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB dvdrental

COPY --from=data /data /data 

COPY create_db.sh /docker-entrypoint-initdb.d/

WORKDIR /data

RUN chmod +x /docker-entrypoint-initdb.d/create_db.sh
RUN chmod +r -R /data 

