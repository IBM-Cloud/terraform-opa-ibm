package ibmcloud.resources.state.data.ibm_is_subnets
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnets"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_subnets", "data").resources[_]
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
subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
