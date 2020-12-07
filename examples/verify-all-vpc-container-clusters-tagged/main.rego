package test_vpc_cluster

import data.ibmcloud.resources.planned.ibm_container_vpc_cluster as cluster

#################################################
# VPC container cluster

# Checks whether vpc cluster is tagged or not
min_vpc_cluster_tags_count = 1

default is_vpc_cluster_taged = false
is_vpc_cluster_taged {
    count(vpc_cluster_tags) > min_vpc_cluster_tags_count
}

vpc_cluster_tags[tag] {
  some i, j 
  tag := cluster.tags[i][j]
}
