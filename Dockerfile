FROM registry.access.redhat.com/ubi7-init
COPY install.sh /root/
RUN chmod +x /root/install.sh && ./root/install.sh
EXPOSE 22
