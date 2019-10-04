FROM node:lts-slim
MAINTAINER T. Wolter <tow.berlin@gmail.com>

RUN apt-get update && apt-get install openssh-server sshpass -y

EXPOSE 3000
CMD ["bash"]
