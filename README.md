edccchk v1.0
============

EDC/ECC checker for RAW (2352 bytes/sector) CD images

Copyright © 2013 Natalia Portillo <claunia@claunia.com>
Based on ECM v1.03 Copyright © 2002-2011 Neill Corlett

Usage
=====

edccchk <cdimage>

<cdimage> RAW 2352 bytes/sector image of a CD.

Features
========

Checks EDC and ECC fields consistency of CD sectors.
Supports Mode 0, Mode 1 and Mode 2 data sectors, ignores Audio sectors.
Shows failing sectors as MSF.

Known bugs
==========

Mode 2 form-less sectors all appear as errors. Mode 2 form 1 and form 2 sectors are processed correctly.

Changelog
=========

2013/12/08	v1.00	Converted ECM code to only check sectors.
			Added support for mode 0 sectors.

To-Do
=====

* Support Mode 2 form-less sectors
* Support RAW+SUB images (2448 bytes/sector)
* Check Q-subchannel CRCs
* Check CD+G CRCs
* Check consistency of P and Q subchannels with sector headers
