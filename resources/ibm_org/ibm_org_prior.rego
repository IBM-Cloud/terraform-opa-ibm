package ibmcloud.resources.prior.ibm_org
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_org"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_org").resources[_]
}
org = ret {
    ret := {res.address: object.get(res.attributes, "org", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

