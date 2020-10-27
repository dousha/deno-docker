#!/bin/sh
curl -fsSL -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
curl -fsSL -O "glibc-2.32-r0.apk" "https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk"
apk add glibc-2.32-r0.apk
curl -fsSL https://deno.land/x/install/install.sh | sh

