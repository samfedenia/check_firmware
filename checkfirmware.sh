#!/bin/bash

# check bios status (for intel NUC / Ubuntu / bash)
# from https://www.cyberciti.biz/faq/how-to-find-intel-nuc-bios-version-and-model-on-linux/

for d in system-manufacturer system-product-name bios-release-date bios-version
do
   echo "${d^} : " $(sudo dmidecode -s $d)
done
