# policy-cos-unencrypted
-   [Introduction](#introduction)
-   [How to run policy?](#how-to-run-policy)

## Introduction
This policy validates the terraform plan conatining cos bucket resources not to have unencrypted buckets.

## How to run policy
Run the below command to execute the policy rule

`opa eval --format pretty  -d . -d <path-to-plan-json-file> "data.terraform.analysis.ibm.cos"`
