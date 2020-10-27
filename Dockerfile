FROM alpine
ENV DENO_INSTALL="/root/.deno"
ENV PATH="${DENO_INSTALL}/bin:${PATH}"
RUN apk add curl unzip
WORKDIR /root
COPY install.sh .
RUN chmod +x install.sh \
	&& ./install.sh

CMD [ "deno" ]

