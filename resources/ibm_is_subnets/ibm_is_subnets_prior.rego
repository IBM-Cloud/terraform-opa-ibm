package ibmcloud.resources.prior.ibm_is_subnets
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnets"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_subnets").resources[_]
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
routing_table_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_table_name", null) |
        res := resources_map[_]
        true
     }
}
routing_table = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_table", null) |
        res := resources_map[_]
        true
     }
}

