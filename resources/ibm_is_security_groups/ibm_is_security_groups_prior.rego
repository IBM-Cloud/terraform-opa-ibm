package ibmcloud.resources.prior.ibm_is_security_groups
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_security_groups"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_security_groups").resources[_]
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
vpc_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_id", null) |
        res := resources_map[_]
        true
     }
}
vpc_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_crn", null) |
        res := resources_map[_]
        true
     }
}
vpc_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_name", null) |
        res := resources_map[_]
        true
     }
}

