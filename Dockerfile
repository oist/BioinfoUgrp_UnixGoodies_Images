FROM debian:12.1
MAINTAINER Charles Plessy <charles.plessy@oist.jp>

RUN apt -y update
RUN apt -y install locales && apt-get clean                                             # Multilingual support
RUN apt -y install man-db perl-doc && apt-get clean                                     # Documentation
RUN apt -y install colordiff gitk && apt-get clean                                      # Coding
RUN apt -y install filezilla lftp magic-wormhole ncftp rsync && apt-get clean           # File transfer
RUN apt -y install ncdu p7zip-full pigz pixz rename && apt-get clean                    # File management
RUN apt -y install datamash libsixel-bin thefuck && apt-get clean                       # Others
