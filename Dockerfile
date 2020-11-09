FROM frolvlad/alpine-glibc
ARG DENO_VERSION=1.5.1
ENV DENO_INSTALL="/root/.deno"
ENV PATH="${DENO_INSTALL}/bin:${PATH}"
RUN apk add curl unzip 
WORKDIR /root
COPY install.sh .
RUN chmod +x install.sh \
	&& ./install.sh
RUN deno upgrade --version ${DENO_VERSION}

ENTRYPOINT [ "deno" ]

