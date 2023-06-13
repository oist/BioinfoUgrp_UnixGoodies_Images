BioinfoUgrp DebianMed Images
============================

GitHub actions workflow to create Debian Med images for OISTs bioinformatics user group.

See also <https://github.com/oist/BioinfoUgrp/blob/master/DebianMedModules.md>


How to get the image:

Make sure you have a [token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) with at least read permissions for packages.

```
podman login ghcr.io
podman pull ghcr.io/oist/bioinfougrp_debianmed_images:latest
```

```
singularity remote login --username charles-plessy docker://ghcr.io
singularity pull docker://ghcr.io/oist/bioinfougrp_debianmed_images:latest
```
