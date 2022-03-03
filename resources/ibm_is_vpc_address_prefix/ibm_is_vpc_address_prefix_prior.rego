package ibmcloud.resources.prior.ibm_is_vpc_address_prefix
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_address_prefix"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_vpc_address_prefix").resources[_]
}
address_prefix_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_prefix_name", null) |
        res := resources_map[_]
        true
     }
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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
address_prefix = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_prefix", null) |
        res := resources_map[_]
        true
     }
}

