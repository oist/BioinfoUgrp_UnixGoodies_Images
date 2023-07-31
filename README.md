OIST's bioinformatics user group Unix goodies images
====================================================

GitHub actions workflow to create Debian images containing nice Unix tools for
OISTs bioinformatics user group.

See also <https://github.com/oist/BioinfoUgrp> and
<https://salsa.debian.org/plessy/debalamod>.

How to get the image:

Make sure you have a
[token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
with at least read permissions for packages.

```
podman login ghcr.io
podman pull ghcr.io/oist/bioinfougrp_unixgoodies_images:latest
```

```
singularity remote login --username your-github-user-name docker://ghcr.io
singularity pull docker://ghcr.io/oist/bioinfougrp_debianmed_images:latest
```
