FROM debian:12.1
MAINTAINER Charles Plessy <charles.plessy@oist.jp>

ENV PKGS_CODING="bat colordiff gitk"
ENV PKGS_FILE_TRANSFER="filezilla lftp magic-wormhole ncftp rsync"
ENV PKGS_FILE_MANAGEMENT="ncdu p7zip-full pigz pixz rename"
ENV PKGS_OTHER="datamash libsixel-bin thefuck"

RUN apt -y update
RUN apt -y install locales               && apt-get clean  # Multilingual support
RUN apt -y install man-db perl-doc       && apt-get clean  # Documentation
RUN apt -y install $PKGS_CODING          && apt-get clean
RUN apt -y install $PKGS_FILE_TRANSFER   && apt-get clean
RUN apt -y install $PKGS_FILE_MANAGEMENT && apt-get clean
RUN apt -y install $PKGS_OTHER           && apt-get clean
RUN apt -y purge apt --allow-remove-essential --auto-remove

RUN printf "$PKGS_CODING $PKGS_FILE_TRANSFER $PKGS_FILE_MANAGEMENT $PKGS_OTHER\n" > /debalamod_pkg_list
ADD https://salsa.debian.org/plessy/debalamod/-/raw/master/debalamod /
RUN chmod 775 /debalamod
