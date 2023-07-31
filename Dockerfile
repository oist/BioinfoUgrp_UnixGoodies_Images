FROM debian:12.1
MAINTAINER Charles Plessy <charles.plessy@oist.jp>

RUN apt -y update
RUN apt -y install locales && apt-get clean                                                  # Multilingual support
RUN apt -y install perl-doc man-db && apt-get clean                                          # Documentation
RUN DEBIAN_FRONTEND=noninteractive apt -y install bioperl python3-biopython && apt-get clean # Bioinfo packages
RUN DEBIAN_FRONTEND=noninteractive apt -y install med-cloud && apt-get clean                 # Bioinfo packages
RUN DEBIAN_FRONTEND=noninteractive apt -y install med-bio && apt-get clean                   # Bioinfo packages
RUN apt -y install gitk colordiff rsync ncftp lftp filezilla p7zip-full rename magic-wormhole ncdu datamash pigz libsixel-bin source-highlight thefuck && apt-get clean # Small utilities
