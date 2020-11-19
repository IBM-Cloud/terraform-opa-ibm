package ibmcloud.resources.prior.ibm_iam_access_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_access_group"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_access_group").resources[_]
}
access_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_group_name", null) |
        res := resources_map[_]
        true
     }
}

