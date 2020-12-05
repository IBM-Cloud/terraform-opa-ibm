package ibmcloud.resources.prior.ibm_cis
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cis").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}

