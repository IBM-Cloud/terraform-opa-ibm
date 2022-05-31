package ibmcloud.resources.state.data.ibm_tg_connection_prefix_filters
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_connection_prefix_filters"
}

resources_map[attr]{
    attr := state.get_resources("ibm_tg_connection_prefix_filters", "data").resources[_]
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
prefix_filters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "prefix_filters", null) |
        res := resources_map[_]
        true
     }
}
