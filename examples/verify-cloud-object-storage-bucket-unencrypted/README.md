# Verify unencrypted cloud object storage bucket
-   [Introduction](#introduction)
-   [Policy](#policy)
-   [How to run policy?](#how-to-run-policy)

## Introduction
This policy validates the terraform plan conatining cos bucket resources not to have unencrypted buckets.

## Policy

Import the planned cloud object store bucket info using the library.
```
import data.ibmcloud.resources.planned.ibm_cos_bucket as cos_bucket

```

Rule - `has_unencrypted_buckets` verifies all the buckets are associated with key protect instances as shown below. 

```
default has_unencrypted_buckets = false
has_unencrypted_buckets {
    count(unencrypted_buckets) > 0
}
unencrypted_buckets := [ bucket_name |
      some i
      cos_bucket.key_protect[i] == null
      bucket_name := cos_bucket.bucket_name[i]
]
```

## How to run policy

Run the below script to generate the terraform plan output in json format.
```
./generate_plan.sh
```
The generated data file is used as a document to OPA. 

Run the below command to execute the policy rule

`opa eval --format pretty  -d . -d <path-to-plan-json-file> "data.terraform.analysis.ibm.cos"`
