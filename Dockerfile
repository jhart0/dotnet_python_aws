FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-bionic

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -yq nodejs build-essential
RUN npm install -g npm
RUN npm install
RUN apt-get update && apt-get install python3 python3-pip -y