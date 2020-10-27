FROM busybox:glibc
ENV DENO_INSTALL="/root/.deno"
ENV PATH="${DENO_INSTALL}/bin:${PATH}"
WORKDIR /root
COPY install.sh .
RUN chmod +x install.sh \
	&& ./install.sh

CMD [ "deno" ]

