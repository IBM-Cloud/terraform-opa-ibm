package ibmcloud.resources.state.data.ibm_is_subnet_reserved_ips
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_subnet_reserved_ips"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_subnet_reserved_ips", "data").resources[_]
}
subnet = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet", null) |
        res := resources_map[_]
        true
     }
}
reserved_ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reserved_ips", null) |
        res := resources_map[_]
        true
     }
}
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}
