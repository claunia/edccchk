edccchk v1.26
=============

EDC/ECC checker for RAW (2352 bytes/sector) CD images

Copyright © 2013-2014 Natalia Portillo <claunia@claunia.com>

Based on ECM v1.03 Copyright © 2002-2011 Neill Corlett

Usage
=====

edccchk <cdimage>

<cdimage> RAW 2352 bytes/sector image of a CD.

Features
========

* Checks EDC and ECC fields consistency of CD sectors.
* Supports Mode 0, Mode 1 and Mode 2 data sectors, ignores Audio sectors.
* Shows failing sectors as MSF.

Changelog
=========

2013/12/08	v1.00
* Converted ECM code to only check sectors.
* Added support for mode 0 sectors.

2014/03/02	v1.10
* Corrected handling of mode 2 form 2 sectors with omitted EDC. Side-effect, corrects mode 2 form-less sectors processing.

2014/03/02	v1.11
* Corrected sum of total errors.

2014/03/06	v1.20
* When an error is detected, will tell if the error was detected with ECC P, ECC Q or EDC. Useful to detect EDC/ECC field corruption.
* Shows a warning when mode 2 subheader copies differ. Other tools detect this as an error, but if both ECC and EDC are ok it's intentional.
* Shows summary of total warnings and total errors+warnings.

2014/03/15	v1.25
* Corrected mishandling of end of data. It was checking for a sector on what should be uninitialized memory instead of breaking main loop.

2014/03/16	v1.26
* Corrected counting 1 sector more than real.

To-Do
=====

* Support RAW+SUB images (2448 bytes/sector)
* Check Q-subchannel CRCs
* Check CD+G CRCs
* Check consistency of P and Q subchannels with sector headers
