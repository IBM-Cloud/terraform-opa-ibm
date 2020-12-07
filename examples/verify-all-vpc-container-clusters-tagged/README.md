# Verify all the vpc cluster resource are tagged
-   [Introduction](#introduction)
-   [Policy](#policy)
-   [How to run policy?](#how-to-run-policy)

## Introduction
This policy validates the terraform plan conatining vpc continer cluster resources to have the tags.

## Policy

Import the planned iam user poilcy info using the library.
```
import data.ibmcloud.resources.planned.ibm_container_vpc_cluster as cluster

```

Rule - `is_vpc_cluster_taged` verifies all the vpc clusters planned and evaluates the number of tags associated with each cluster at least 1,  as shown below.

```
min_vpc_cluster_tags_count = 1

default is_vpc_cluster_taged = false
is_vpc_cluster_taged {
    count(vpc_cluster_tags) > min_vpc_cluster_tags_count
}

vpc_cluster_tags[tag] {
  some i, j 
  tag := cluster.tags[i][j]
}

```

The minimum number of allowed tags is configured to 1 using the below variable

```
min_vpc_cluster_tags_count = 1
```

## How to run policy

Run the below script to generate the terraform plan output in json format.
```
./generate_plan.sh
```
The generated data file is used as a document to OPA. 

Run the below command to execute the policy rule

`opa eval --format pretty  -d <path-to-library> -d <path-to-plan-json-file> "data.test_vpc_cluster"`
