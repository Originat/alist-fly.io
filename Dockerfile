FROM xhofe/alist:latest
LABEL MAINTAINER="i@nn.ci"

ADD alist.sh /alist.sh
RUN chmod +x /alist.sh

CMD /alist.sh