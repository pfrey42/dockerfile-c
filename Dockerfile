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

RUN groupadd -f -g 1000 name_user && \
    useradd -u 1000 -g name_user name_user && \
    mkdir -p /home/name_user

RUN chown -R name_user:name_user /home/name_user


CMD ["/bin/bash"]
