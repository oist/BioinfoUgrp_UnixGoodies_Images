FROM debian:12.1
MAINTAINER Charles Plessy <charles.plessy@oist.jp>

RUN apt -y update
RUN apt -y install locales && apt-get clean                                             # Multilingual support
RUN apt -y install man-db perl-doc && apt-get clean                                     # Documentation
RUN apt -y install colordiff source-highlight && apt-get clean                          # Coding
RUN apt -y install filezilla lftp magic-wormhole ncftp rsync && apt-get clean           # Network
RUN apt -y install ncdu p7zip-full pigz rename && apt-get clean                         # File management
RUN apt -y install datamash libsixel-bin thefuck && apt-get clean                       # Others
