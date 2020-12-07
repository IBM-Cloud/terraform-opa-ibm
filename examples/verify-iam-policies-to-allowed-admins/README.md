# Verify iam-user-policies to allowed admins
-   [Introduction](#introduction)
-   [Policy](#policy)
-   [How to run policy?](#how-to-run-policy)

## Introduction
This policy validates the terraform plan conatining IAM user policies from the configuration to have minimum number of Admins

## Policy

Import the planned iam user poilcy info using the library.
```
import data.ibmcloud.resources.planned.ibm_iam_user_policy as iam_user_policy

```

Rule - `has_too_many_admins` verifies all the iam user policies and evaluates the number of admins as shown below.

```
default has_too_many_admins = false
has_too_many_admins {
    count(iam_user_policy_admins) > max_global_admins
}

iam_user_policy_admins[ibm_id] {
    res := iam_user_policy.resources_map[_]
    res.attributes.roles[_] == "Administrator"
    ibm_id := res.attributes.ibm_id
}   bucket_name := cos_bucket.bucket_name[i]
]
```

The maximum number of allowed admins is configured to 1 using the below variable

```
max_global_admins = 1
```

## How to run policy

Run the below script to generate the terraform plan output in json format.
```
./generate_plan.sh
```
The generated data file is used as a document to OPA. 

Run the below command to execute the policy rule

`opa eval --format pretty  -d <path-to-library> -d <path-to-plan-json-file>  "data.test_iam_user_policy"`
