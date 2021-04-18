#!/bin/bash

setTime() {
	echo "Time server request - be patient ..."
	ntpdate 0.pool.ntp.org
	echo "Set hardware clock ..."
	hwclock -w
	echo "quit root ..."
	exit
}

doAsRoot() {
	echo "Set time (Porteus Live)"
	echo "root required ..." && su root "$0"
}

which ntpdate 2>/dev/null >/dev/null && setTime || doAsRoot

# ()
