FROM debian:bookworm-backports

RUN apt update && \
    apt install -y\
	vsftpd \
	vim \
	sudo \
	net-tools

RUN sudo sed -i "s/anonymous_enable=NO/anonymous_enable=YES/g" /etc/vsftpd.conf 
RUN sudo sed -i "s/#write_enable=YES/write_enable=YES/g" /etc/vsftpd.conf

RUN sudo mkdir /srv/ftp/user1
RUN sudo usermod -d /srv/ftp/user1 ftp

EXPOSE 21

CMD ["/usr/sbin/vsftpd", "-obackground=NO", "/etc/vsftpd.conf"] 
