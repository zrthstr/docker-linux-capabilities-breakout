### This repos contains proof of concept code to document different docker breakout/escape techniques. The breakouts are all related to linux capabilities

## Implemented so far
### CAP_SYS_MODULE
Done according to this doc https://book.hacktricks.xyz/linux-hardening/privilege-escalation/linux-capabilities#cap_sys_module

This escape works by first compiling a kernel module that subsequently gets loded via insmod into the host's kernel space.
Note that this mean that the kernel headers for the compilaton need to match the hosts kernel.
E.g these kernel header need to be fetched for the host OS not for the kernel os.
In this case we fetch them via `apt get`. If yous host is running centOS they might not be in the apt repo.

TLDR; this escape needs to be modified if your host os is not ubuntu 20.04.

## Palnned

* DAC_READ_SEARCH
* DAC_OVERRIDE
* CAP_SYS_PTRACE
* CAP_SYS_ADMIN

## Probbably no breakout possible

* TBD

