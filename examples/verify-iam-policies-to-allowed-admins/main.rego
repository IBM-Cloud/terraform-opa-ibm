package test_iam_user_policy

import data.ibmcloud.resources.planned.ibm_iam_user_policy as iam_user_policy

#################################################
# user policies

# Checks whether there are too many admins
max_global_admins = 1

default has_too_many_admins = false
has_too_many_admins {
    count(iam_user_policy_admins) > max_global_admins
}

iam_user_policy_admins[ibm_id] {
    res := iam_user_policy.resources_map[_]
    res.attributes.roles[_] == "Administrator"
    ibm_id := res.attributes.ibm_id
}
