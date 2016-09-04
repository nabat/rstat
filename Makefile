

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}


install:
	$(INSTALL_PROGRAM) rstatc  /usr/local/bin        
	$(INSTALL_PROGRAM) rstats  /usr/local/sbin

installserver: 
	$(INSTALL_PROGRAM) rstatc  /usr/local/bin
	$(INSTALL_PROGRAM) rstats  /usr/local/sbin
	echo "rstats         30003/tcp" >> /etc/services
	echo "rstats  stream  tcp     nowait  root    /usr/local/sbin/rstats rstats" >> /etc/inetd.conf
