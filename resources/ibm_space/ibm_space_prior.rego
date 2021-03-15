package ibmcloud.resources.prior.ibm_space
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_space"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_space").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
org = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org", null) |
        res := resources_map[_]
        true
     }
}
space = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space", null) |
        res := resources_map[_]
        true
     }
}

