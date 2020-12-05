package ibmcloud.resources.prior.ibm_is_subnet
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_subnet").resources[_]
}
identifier = ret {
    ret := {res.address: object.get(res.attributes, "identifier", null) |
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

