package test_cos_bucket

import data.ibmcloud.resources.planned.ibm_cos_bucket as cos_bucket
import data.terraform.analysis.ibm.config as config

#############################################
# unencrypted COS
# Checks whether there are unencrypted COS buckets
default has_unencrypted_buckets = false
has_unencrypted_buckets {
    count(unencrypted_buckets) > 0
}
unencrypted_buckets := [ bucket_name |
      some i
      cos_bucket.key_protect[i] == null
      bucket_name := cos_bucket.bucket_name[i]
]