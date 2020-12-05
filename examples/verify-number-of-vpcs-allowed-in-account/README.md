# Verify number of vpcs allowed in an account
-   [Introduction](#introduction)
-   [Policy](#policy)
-   [How to run policy?](#how-to-run-policy)

## Introduction
This policy validates the terraform plan conatining vpcs from the configuration to have minimum number supported in the account.

## Policy

Import the planned iam user poilcy info using the library.
```
import data.ibmcloud.resources.planned.ibm_is_vpc as vpc

```

Rule - `has_too_many_vpcs` verifies all the vpcs planned and evaluates the number of vpcs as shown below.

```
default max_global_vpcs = false
has_too_many_vpcs {
    count(vpcs_planned) > max_global_vpcs
}

vpcs_planned[vpc_name] {
  some i  
  vpc_name:= vpc.resources_map[i].name
}
```

The maximum number of allowed vpcs is configured to 2 using the below variable

```
max_global_vpcs = 2
```

## How to run policy

Run the below script to generate the terraform plan output in json format.
```
./generate_plan.sh
```
The generated data file is used as a document to OPA. 

Run the below command to execute the policy rule

`opa eval --format pretty  -d . -d <path-to-plan-json-file> "data.terraform.analysis.ibm.cos"`
