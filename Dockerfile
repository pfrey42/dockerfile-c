#INSTALL
#Depuis le dossier ou ce trouve le dockerfile
#docker build -t c-pool .
#Depuis le dossier partager (par exemple créer un dossier Coding dans le home)
#docker run --name c_pool -it -v "$PWD":/usr/Rendu -w /usr/Rendu c-pool /bin/bash


#LAUNCH
#docker ps
#si c_pool n'est pas afficher
#docker start c_pool
#docker exec -i -t c_pool /bin/bash
#sinon
#docker exec -i -t c_pool /bin/bash

FROM debian:jessie

RUN apt-get update && apt-get install -y \
    autoconf \
    build-essential \
    ca-certificates \
    curl \
    dh-autoreconf \
    gcc \
    git \
    libc6-dev \
    libgflags-dev \
    libsnappy1 \
    libsnappy-dev \
    libssl-dev \
    libtool \
    libbz2-dev \
	lintian \
	make \
    mercurial \
	python\
	bc\
    emacs\
    vim\
    nano\
	manpages-dev\
    && rm -rf /var/lib/apt/lists/*


CMD ["/bin/bash"]
