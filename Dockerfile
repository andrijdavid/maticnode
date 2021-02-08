FROM ubuntu:focal
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NOWARNINGS yes
RUN apt update -qq && apt install -qqy build-essential git openssh-server && rm -rf /var/cache/apt/archives/
WORKDIR /root
RUN ssh-keygen -A  && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    echo 'root:root' | chpasswd && \
    mkdir -p /run/sshd && \
    chmod 0755 /run/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
