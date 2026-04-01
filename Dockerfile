FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
CMD ["echo", "My First Docker Image"]
