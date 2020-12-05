package ibmcloud.resources.prior.ibm_iam_roles
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_roles"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_roles").resources[_]
}
service = ret {
    ret := {res.address: object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}

