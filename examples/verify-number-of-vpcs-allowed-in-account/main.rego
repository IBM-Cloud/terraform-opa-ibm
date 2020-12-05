package terraform.analysis.ibm.cos

import data.ibmcloud.resources.planned.ibm_is_vpc as vpc

#################################################
# IS VPCs

# Checks whether there are too many vpcs
max_global_vpcs = 2

default max_global_vpcs = false
has_too_many_vpcs {
    count(vpcs_planned) > max_global_vpcs
}

vpcs_planned[vpc_name] {
  some i  
  vpc_name:= vpc.resources_map[i].name
}
