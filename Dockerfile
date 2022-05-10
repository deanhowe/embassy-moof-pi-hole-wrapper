FROM pihole/pihole:latest as builder

# 67/udp # Only required if you are using Pi-hole as your DHCP server

RUN apt-get update \
&& apt install -y wget

# INSTALL YQ - for editing YAML
RUN wget -O /usr/local/bin/yq https://github.com/mikefarah/yq/releases/download/v4.6.3/yq_linux_arm && chmod a+x /usr/local/bin/yq

#RUN apt-get update \
#&& apt install -y jq

RUN apt-get autoremove && apt-get clean && apt-get autoclean

COPY docker_entrypoint.sh /docker_entrypoint.sh
RUN chmod +x /docker_entrypoint.sh

EXPOSE 53 67 80

ENTRYPOINT ["/docker_entrypoint.sh"]