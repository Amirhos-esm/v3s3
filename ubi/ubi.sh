#!/bin/bash

mkfs.ubifs -x lzo -F -m 2048 -e 126976 -c 732 -o rootfs_ubifs.img -d output/target
ubinize -o output/images/ubi.img -m 2048 -p 131072 -O 2048 -s 2048 ./ubinize.cfg  -v
