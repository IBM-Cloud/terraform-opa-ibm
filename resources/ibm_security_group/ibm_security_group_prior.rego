package ibmcloud.resources.prior.ibm_security_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_security_group"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_security_group").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
most_recent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "most_recent", null) |
        res := resources_map[_]
        true
     }
}

