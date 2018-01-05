#!/bin/bash
openstack overcloud deploy --templates ~/templates/default_templates \
-e ~/templates/node-info.yaml \
-e ~/templates/overcloud_images.yaml \
-e ~/templates/environments/network-isolation.yaml \
-e ~/templates/environments/network-environment.yaml \
-e ~/templates/environments/storage-environment.yaml \
-e ~/templates/environments/timezone.yaml \
-e ~/templates/environments/ceph-disable.yaml \
-e ~/templates/environments/scheduler_hints_env.yaml \
-t 300 \
--ntp-server clock.corp.redhat.com 

