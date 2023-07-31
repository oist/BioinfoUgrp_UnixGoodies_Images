OIST's bioinformatics user group Unix goodies images
====================================================

GitHub actions workflow to create Debian images containing nice Unix tools for
OISTs bioinformatics user group.

See also <https://github.com/oist/BioinfoUgrp> and
<https://salsa.debian.org/plessy/debalamod>.

## How to get the image:

```
ml singularity
singularity pull docker://ghcr.io/oist/bioinfougrp_debianmed_images:latest
```

## Goodies in this image:

### File management

 - [ncdu](https://dev.yorhel.nl/ncdu): disk usage analysis.
 - [p7-zip](https://sourceforge.net/projects/p7zip/): can uncompress and repair some large Zip files that other tools can not.
 - [pigz](http://zlib.net/pigz/): compress files faster using plenty of CPU cores.
 - [rename](https://metacpan.org/dist/File-Rename): use Perl regular expressions to rename files.

### File transfers

 - [filezilla](https://filezilla-project.org/): graphical interface for file transfers.
 - [lftp](https://lftp.yar.ru/): text interface for file transfers.
 - [magic-wormhole](https://github.com/magic-wormhole/magic-wormhole): transfer a file to anywhere in the Universe.
 - [ncftp](http://www.ncftpd.com/ncftp/): text interface for file transfers.
 - [rsync](https://rsync.samba.org/): fast incremental file transfers.

### Software development

 - [colordiff](https://www.colordiff.org/): color your diffs.
 - [gitk](https://git-scm.com/docs/gitk): visualise your Git tree.

### Other tools

 - [datamash](https://www.gnu.org/software/datamash/): command-line tools for computing statistics on numbers from text files.
 - [libsixel](https://saitoha.github.io/libsixel/): display images in your terminal!
 - [thef...](https://github.com/nvbn/thefuck): swear and the computer fixes your typos.

## How to add a goodie to the image

Please open an issue or contact us on our Teams channel.

## For admins, how to tag the image

Make sure you have a
[token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
with write permissions for packages.

```
podman login ghcr.io
podman pull  ghcr.io/oist/bioinfougrp_unixgoodies_images:latest
podman tag   ghcr.io/oist/bioinfougrp_unixgoodies_images:latest ghcr.io/oist/bioinfougrp_unixgoodies_images:12.1-1
podman push  ghcr.io/oist/bioinfougrp_unixgoodies_images:12.1-1
```
