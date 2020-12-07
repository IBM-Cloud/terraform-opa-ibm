package test_vpc_tag

import data.ibmcloud.resources.planned.ibm_is_vpc as vpc

#################################################
# IS VPCs

# Checks whether there is different tag associated with with vpc resource
org_and_department = "org-x:dept-y"

default vpc_tags_unallowed = false
vpc_tags_unallowed {
    count(vpcs_with_unallowed_tags) > 0
}

vpcs_with_unallowed_tags[d] {
  some i, j
  tag:= vpc.tags[i][j]
  contains(tag, org_and_department) == false
  d := {i : tag }
}

