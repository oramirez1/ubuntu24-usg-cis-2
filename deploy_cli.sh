#!/usr/bin/env sh 

vss-cli --wait compute vm mk from-clib \
--memory 4 --cpu 2 \
--source ubuntu-24.04  \
--disk 50 --firmware efi \
--description 'Ubuntu 24.04 LTS with Ubuntu Pro and CIS Level 2.' \
--client EIS --os ubuntu64Guest --usage Test \
--folder group-v923367 --net dvportgroup-545783 --vss-service N/A \
--extra-config disk.EnableUUID=TRUE \
--network-config cloud-init/network.yaml \
--user-data cloud-init/userdata.yaml \
--power-on vss-ubuntu24-usg-cis2
