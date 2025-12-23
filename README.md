OIST's bioinformatics user group Unix goodies images
====================================================

GitHub actions workflow to create Debian images containing nice Unix tools for
OISTs bioinformatics user group.

See also <https://github.com/oist/BioinfoUgrp> and
<https://salsa.debian.org/plessy/debalamod>.

## How to use the image on OISTs HPC cluster

 - Activate the modules with `ml bioinfo-ugrp-modules UnixGoodies`.
 - Discover them with `ml av`.
 - Load them with `ml`, followed by the module's name.  

## How to get the image:

If you are not at OIST or if you need the image elsewhere, you can download
it from GitHub with Singularity.  If Singularity is available as a module you
may need to run `ml singularity` before pulling the image.  Then, pull it with
`singularity pull docker://ghcr.io/oist/bioinfougrp_unixgoodies_images:latest`.

## Goodies in this image:

### File management

 - [archivemount](https://github.com/cybernoid/archivemount): mounts an archive for access as a file system.
 - [broot](https://dystroy.org/broot/): navigate directories, find files, and launch commands.
 - [duc](https://duc.zevv.nl/): file usage analysis (command-line and graphical).
 - [duf](https://github.com/muesli/duf): filesystem usage/free analysis.
 - [dysk](https://github.com/Canop/dysk): utility listing your filesystems.
 - [eza](https://eza.rocks/): colorful `ls` with tree option.
 - [fd-find](https://github.com/sharkdp/fd): fast and user-friendly alternative to find.
 - [fdupes](https://github.com/adrianlopezroche/fdupes): identify duplicate files residing within specified directories.
 - [gt5](https://gt5.sourceforge.net/): file usage analysis.
 - [lsix](https://github.com/hackerb9/lsix): Shows thumbnails in terminal using sixel graphics.
 - [ncdu](https://dev.yorhel.nl/ncdu): file usage analysis.
 - [rename](https://metacpan.org/dist/File-Rename): use Perl regular expressions to rename files.
 - [trash-cli](https://github.com/andreafrancia/trash-cli): trashcan system.

### File compression

 - [grabix](https://github.com/arq5x/grabix): Efficiently extract the n-th line of a bgzip-compressed file.
 - [p7-zip](https://sourceforge.net/projects/p7zip/): can uncompress and repair some large Zip files that other tools can not.
 - [pigz](http://zlib.net/pigz/): compress files faster using plenty of CPU cores.
 - [pixz](https://github.com/vasi/pixz): compress files faster using plenty of CPU cores.
 - [tabix](https://github.com/samtools/htslib): provides the bgzip command to produced indexed gzip files.

### File transfers

 - [bashbro](https://github.com/victrixsoft/bashbro): A Bash-based web file browser.
 - [filezilla](https://filezilla-project.org/): graphical interface for file transfers.
 - [lftp](https://lftp.yar.ru/): text interface for file transfers.
 - [magic-wormhole](https://github.com/magic-wormhole/magic-wormhole): transfer a file to anywhere in the Universe.
 - [ncftp](http://www.ncftpd.com/ncftp/): text interface for file transfers.
 - [rsync](https://rsync.samba.org/): fast incremental file transfers.

### Software development

 - [bat](https://github.com/sharkdp/bat): syntax coloring.
 - [colordiff](https://www.colordiff.org/): color your diffs.
 - [gitk](https://git-scm.com/docs/gitk): visualise your Git tree.
 - [git-delta](https://github.com/dandavison/delta): syntax-highlighting pager for git, diff, and grep output.
 - [icdiff](https://www.jefftk.com/icdiff): side-to-side color word-diffs.
 - [kakoune](http://kakoune.org/): modal text editor friently assistant and more.
 - [meldmerge](https://meldmerge.org/): graphical visual diff and merge tool.
 - [powerline-go](https://github.com/justjanne/powerline-go): A powerline style prompt for your shell.

### Cloud tools

 - [aws-cli](https://github.com/aws/aws-cli): command-line interaction with the Amazon Web Services.
 - [cmis-client](https://github.com/tdf/libcmis): command line CMIS client tool.
 - [rclone](https://rclone.org/): Sync files to cloud storage.

### Other tools

 - [asciinema](https://asciinema.org/): Record and share your terminal sessions, the simple way.
 - [cowsay](https://web.archive.org/web/20071026043648/http://www.nog.net/~tony/warez/cowsay.shtml): let the cow say it for you.
 - [datamash](https://www.gnu.org/software/datamash/): command-line tools for computing statistics on numbers from text files.
 - [fzf](https://junegunn.github.io/fzf/): command-line fuzzy finder.
 - [glances](https://nicolargo.github.io/glances/): An Eye on your system.
 - [glow](https://github.com/charmbracelet/glow): Render markdown on the CLI, with pizzazz!
 - [hyperfine](https://github.com/sharkdp/hyperfine): command-line benchmarking tool.
 - [libsixel](https://saitoha.github.io/libsixel/): display images in your terminal!
 - [mawk](https://invisible-island.net/mawk/): the AWK found on some minimal footprint containers.
 - [screenfetch](https://github.com/KittyKatt/screenFetch): the bash screenshot information tool.
 - [terminaltexteffects](https://chrisbuilds.github.io/terminaltexteffects/appguide/): inline visual effects in the terminal.
 - [tmux](https://github.com/tmux/tmux/), with sixel support
 - [thef...](https://github.com/nvbn/thefuck): swear and the computer fixes your typos.
 - [ugrep](https://ugrep.com/): grep with fuzzy search, user interface, etc.

## How to add a goodie to the image

Please open an issue or contact us on our Teams channel.

## For admins, how to tag the image

Make sure you have a
[token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
with write permissions for packages.

```
podman login ghcr.io
podman pull  ghcr.io/oist/bioinfougrp_unixgoodies_images:latest
podman tag   ghcr.io/oist/bioinfougrp_unixgoodies_images:latest ghcr.io/oist/bioinfougrp_unixgoodies_images:13.1-1
podman push  ghcr.io/oist/bioinfougrp_unixgoodies_images:13.1-1
```

## For admins, how to create the modules

This is likely to change in the future.

```
ml singularity
singularity pull docker://ghcr.io/oist/bioinfougrp_unixgoodies_images:13.1-1
ln -s bioinfougrp_unixgoodies_images_13.1-1.sif ./debalamod.sif
./debalamod.sif cp /debalamod .
for pkg in $(./debalamod.sif cat /debalamod_pkg_list); do ./debalamod $pkg; done
```

And then `module use …`

## To be added

 - [silversearcher-ag](https://github.com/ggreer/the_silver_searcher)
 - [starfetch](https://github.com/Haruno19/starfetch) in a new "games" section?
 - …

## To be checked after next Debian release

 - [ble.sh](https://github.com/akinomyoga/ble.sh): Bash Line Editor.
 - [pay-respects](https://github.com/iffse/pay-respects), a potential replacement for thef…
 - [xan](https://github.com/medialab/xan)
