# Firejail profile for franz
# This file is overwritten after every install/update
# Persistent local customizations
include franz.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/Franz
noblacklist ${HOME}/.config/Franz
noblacklist ${HOME}/.pki

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.cache/Franz
mkdir ${HOME}/.config/Franz
mkdir ${HOME}/.pki
whitelist ${DOWNLOADS}
whitelist ${HOME}/.cache/Franz
whitelist ${HOME}/.config/Franz
whitelist ${HOME}/.pki
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
nou2f
protocol unix,inet,inet6,netlink
seccomp
shell none

disable-mnt
private-dev
private-tmp

noexec ${HOME}
