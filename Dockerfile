FROM circleci/android:api-28-node8-alpha
LABEL maintainer="info+circleci@notnot.se"
WORKDIR /home/circleci/
RUN wget http://ftp.br.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.6_all.deb
RUN sudo apt -y update && sudo apt -y install --no-install-recommends imagemagick cabextract && sudo dpkg -i ttf-mscorefonts-installer_3.6_all.deb

