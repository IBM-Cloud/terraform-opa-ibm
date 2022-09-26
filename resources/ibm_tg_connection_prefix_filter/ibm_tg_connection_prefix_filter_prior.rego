package ibmcloud.resources.prior.ibm_tg_connection_prefix_filter
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_connection_prefix_filter"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_tg_connection_prefix_filter").resources[_]
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_id", null) |
        res := resources_map[_]
        true
     }
}
filter_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "filter_id", null) |
        res := resources_map[_]
        true
     }
}

