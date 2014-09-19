#!/bin/bash
# Root backup script

dd if=/dev/sda1 of=/media/dataBackup/goflex.sda1.rootfs.backup.img bs=4M

