# Building Netbsd's Amiga port 'loadbsd' tool.

During a netbsd install, I realized the binary Netbsd provided didn't match the functionality described in the manpage.

As it turns out, the binary is not part of Netbsd's build process. The sources had been modified over the years, but the binary was never updated.

The last person to do so left some instructions (see README file), but as expected, they do not work anymore.

This repository is a very ugly, but successful, attempt at getting loadbsd built using a modern AmigaOS crossdev toolchain.

The starting point (initial commit) is Netbsd's current sources + old README instructions applied + minor Makefile modification to make it work with crossdev.

The current version builds with the toolchain installed by 'bebbo/amiga-gcc' by just typing 'Make'.

A binary I built like this is available at the "releases" section of the github repo. I installed netbsd with it over the serial console, using the '-C' flag not available in the old binary.
