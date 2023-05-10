FROM debian:11.7
MAINTAINER Charles Plessy <charles.plessy@oist.jp>

RUN apt -y update
RUN apt -y install locales # Multilingual support
RUN DEBIAN_FRONTEND=noninteractive apt -y install med-cloud med-bio bioperl python3-biopython # Bioinfo packages
RUN apt -y install gitk colordiff rsync ncftp lftp filezilla p7zip-full rename magic-wormhole datamash pigz libsixel-bin source-highlight # Small utilities
RUN apt -y install perl-doc man-db # Documentation
