#!/usr/bin/env bash
#
# Copyright (C) 2016 Xenith Consulting Limited
# Author: Salim Badakhchani <sbadakhc@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
########################################################################

# Switch on Debugging
#set -x

# Check user priviledges
[[ $(id -u) == 0 ]] || echo -e "\n# This script requires root priviledges to run"

echo -e "########################################################################"
echo -e "Autom8...Uninstalling Openshift Origin and Fabric8"
echo -e "########################################################################\n"

echo -e "# Commencing cleanup...Please be patient."

echo -e "# Stopping openshift..."
systemctl stop openshift-origin

COUNT=$(mount | grep tmpfs | wc -l)

while [ $COUNT -gt 0 ]; do
  umount tmpfs > /dev/null 2>&1  
  COUNT=$[$COUNT-1]
done

echo -e "# Stopping docker..."
systemctl stop docker

echo -e "# Remove docker..."
rm -rf /opt/*
rm -rf /var/lib/docker/*
rm -rf /var/lib/openshift/*
rm -rf .m2
rm -rf /root/*.log
rm -rf /etc/openshift

echo -e "# Clean up completed."

