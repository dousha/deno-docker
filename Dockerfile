FROM alpine:stable
ENV DENO_INSTALL="/root/.deno"
ENV PATH="${DENO_INSTALL}/bin:${PATH}"
RUN apk add curl unzip
COPY install.sh .
RUN chmod +x install.sh \
	&& ./install.sh

ENTRYPOINT [ "deno" ]

