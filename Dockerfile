FROM mcr.microsoft.com/dotnet/core/sdk:3.1-bionic

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime \
 && dpkg-reconfigure --frontend noninteractive tzdata

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -yq nodejs build-essential
RUN npm install -g npm
RUN npm install
RUN apt-get update && apt-get install python3 python3-pip -y

RUN apt-get install zip awscli jq -y \
  && pip3 install boto3
