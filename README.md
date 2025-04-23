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
 - [duc](https://duc.zevv.nl/): file usage analysis (command-line and graphical).
 - [duf](https://github.com/muesli/duf): filesystem usage/free analysis.
 - [gt5](https://gt5.sourceforge.net/): file usage analysis.
 - [exa](https://the.exa.website/): colorful `ls` with tree option.
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

 - [filezilla](https://filezilla-project.org/): graphical interface for file transfers.
 - [lftp](https://lftp.yar.ru/): text interface for file transfers.
 - [magic-wormhole](https://github.com/magic-wormhole/magic-wormhole): transfer a file to anywhere in the Universe.
 - [ncftp](http://www.ncftpd.com/ncftp/): text interface for file transfers.
 - [rsync](https://rsync.samba.org/): fast incremental file transfers.

### Software development

 - [bat](https://github.com/sharkdp/bat): syntax coloring.
 - [colordiff](https://www.colordiff.org/): color your diffs.
 - [gitk](https://git-scm.com/docs/gitk): visualise your Git tree.
 - [icdiff](https://www.jefftk.com/icdiff): side-to-side color word-diffs.
 - [kakoune](http://kakoune.org/): modal text editor friently assistant and more.

### Cloud tools

 - [aws-cli](https://github.com/aws/aws-cli): command-line interaction with the Amazon Web Services.
 - [cmis-client](https://github.com/tdf/libcmis): command line CMIS client tool.
 - [rclone](https://rclone.org/): Sync files to cloud storage.

### Other tools

 - [cowsay](https://web.archive.org/web/20071026043648/http://www.nog.net/~tony/warez/cowsay.shtml): let the cow say it for you.
 - [datamash](https://www.gnu.org/software/datamash/): command-line tools for computing statistics on numbers from text files.
 - [fzf](https://junegunn.github.io/fzf/): command-line fuzzy finder.
 - [hyperfine](https://github.com/sharkdp/hyperfine): command-line benchmarking tool.
 - [libsixel](https://saitoha.github.io/libsixel/): display images in your terminal!
 - [neofetch](https://github.com/dylanaraps/neofetch): System information and OS logo.
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
podman tag   ghcr.io/oist/bioinfougrp_unixgoodies_images:latest ghcr.io/oist/bioinfougrp_unixgoodies_images:12.9-1
podman push  ghcr.io/oist/bioinfougrp_unixgoodies_images:12.9-1
```

## For admins, how to create the modules

This is likely to change in the future.

```
ml singularity
./debalamod.sif cp /debalamod .
for pkg in $(./debalamod.sif cat /debalamod_pkg_list); do ./debalamod $pkg; done
```

And then `module use …`

## Consider adding at next build

 - [asciinema](https://asciinema.org/)

## To be checked after next Debian release

 - [bashbro](https://github.com/victrixsoft/bashbro)
 - [ble.sh](https://github.com/akinomyoga/ble.sh)
 - [git-delta](https://github.com/dandavison/delta)
 - [lsix](https://github.com/hackerb9/lsix)
 - [dysk](https://github.com/Canop/dysk)
 - [terminaltexteffects](https://chrisbuilds.github.io/terminaltexteffects/appguide/)
 - [glow](https://github.com/charmbracelet/glow)
 - [pay-respects](https://github.com/iffse/pay-respects), a potential replacement for thef…
