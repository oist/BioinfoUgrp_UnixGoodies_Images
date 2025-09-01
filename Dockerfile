FROM debian:13.0
MAINTAINER Charles Plessy <charles.plessy@oist.jp>

# Needed for cowsay…
ENV PATH="${PATH}:/usr/games"

ENV PKGS_CLOUD="awscli cmis-client rclone"
ENV PKGS_CODING="bat colordiff gitk git-delta icdiff kakoune meld powerline-go"
ENV PKGS_FILE_TRANSFER="bashbro filezilla lftp magic-wormhole ncftp rsync"
ENV PKGS_FILE_COMPRESSION="grabix p7zip-full pigz pixz tabix"
ENV PKGS_FILE_MANAGEMENT="archivemount broot duc duf dysk eza fdupes fd-find gt5 lsix ncdu rename trash-cli"
ENV PKGS_DEBIAN_DEVEL="debootstrap fakechroot schroot sbuild"
ENV PKGS_OTHER="asciinema cowsay datamash fzf glow hyperfine libsixel-bin screenfetch thefuck tmux python3-terminaltexteffects ugrep"

RUN apt -y update
RUN apt -y install locales-all            && apt-get clean  # Multilingual support
RUN apt -y install man-db perl-doc        && apt-get clean  # Documentation
RUN apt -y install $PKGS_CLOUD            && apt-get clean
RUN apt -y install $PKGS_CODING           && apt-get clean
RUN apt -y install $PKGS_FILE_TRANSFER    && apt-get clean
RUN apt -y install $PKGS_FILE_COMPRESSION && apt-get clean
RUN apt -y install $PKGS_FILE_MANAGEMENT  && apt-get clean
RUN apt -y install $PKGS_DEBIAN_DEVEL     && apt-get clean
RUN apt -y install $PKGS_OTHER            && apt-get clean
RUN apt -y purge apt --allow-remove-essential --auto-remove

RUN printf "$PKGS_CLOUD $PKGS_CODING $PKGS_FILE_TRANSFER $PKGS_FILE_COMPRESSION $PKGS_FILE_MANAGEMENT $PKGS_OTHER\n" > /debalamod_pkg_list
ADD https://salsa.debian.org/plessy/debalamod/-/raw/master/debalamod /
RUN chmod 775 /debalamod
