# windows-gaming-vm
Using libvirt to create a windows gaming virtual machine

===== /etc/libvirt/qemu.conf =====

This goes at the end

```
cgroup_device_acl = [
  "/dev/null", "/dev/full", "/dev/zero",
  "/dev/random", "/dev/urandom",
  "/dev/ptmx", "/dev/kvm", "/dev/kqemu",
  "/dev/rtc","/dev/hpet", "/dev/vfio/vfio",
  "/dev/vfio/12"
]
clear_emulator_capabilities = 0
```
