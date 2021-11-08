package ibmcloud.resources.state.data.ibm_is_vpc_routing_tables
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_routing_tables"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpc_routing_tables", "data").resources[_]
}
routing_tables = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_tables", null) |
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
