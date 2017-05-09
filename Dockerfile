#docker run -it -v "$PWD":/usr/Rendu -w /usr/Rendu test /bin/bash
#alias Ccont="docker run -it -v "$PWD":/usr/Rendu -w /usr/Rendu test /bin/bash"

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
