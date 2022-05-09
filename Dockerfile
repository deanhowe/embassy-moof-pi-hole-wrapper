FROM pihole/pihole:latest as builder

ARG VERSION

#RUN apt-get update \
#&&  apt-get install -y jq wget nano

# INSTALL YQ - for editing YAML
#RUN wget -O /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/v4.6.3/yq_linux_arm \
#    && chmod a+x /usr/local/bin/yq

#COPY docker_entrypoint.sh /docker_entrypoint.sh
#RUN chmod +x /docker_entrypoint.sh

EXPOSE 5000 5001 5002 5003 5004 5005 8080

ENTRYPOINT ["/docker_entrypoint.sh"]
