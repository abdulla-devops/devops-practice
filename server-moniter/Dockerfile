FROM ubuntu

RUN apt-get update && \
	apt-get install -y procps

COPY moniter.sh /app/moniter.sh

RUN chmod +x /app/moniter.sh

CMD ["/app/moniter.sh"]
