# Verify all the vpc resources are tagged with proper org and departments
-   [Introduction](#introduction)
-   [Policy](#policy)
-   [How to run policy?](#how-to-run-policy)

## Introduction
This policy validates the terraform plan conatining vpcs from the configuration to have proper format of the tag.

## Policy

Import the planned iam user poilcy info using the library.
```
import data.ibmcloud.resources.planned.ibm_is_vpc as vpc

```

Rule - `vpc_tags_unallowed` verifies all the vpcs planned and evaluates tags of vpcs as shown below.

```
org_and_department = "org-x:dept-y"

default max_global_vpcs = false
vpc_tags_unallowed {
    count(vpcs_with_unallowed_tags) > 0
}

vpcs_with_unallowed_tags[d] {
  some i , j
  tag:= vpc.tags[i][j]
  contains(tag, org_and_department) == false
  d := {i : tag }
}

```

The org and dept info is configured to `"org-x:dept-y"` using the below variable

```
org_and_department = "org-x:dept-y"
```

## How to run policy

Run the below script to generate the terraform plan output in json format.
```
./generate_plan.sh
```
The generated data file is used as a document to OPA. 

Run the below command to execute the policy rule

`opa eval --format pretty  -d <path-to-library> -d <path-to-plan-json-file> "data.test_vpc_tag"`
