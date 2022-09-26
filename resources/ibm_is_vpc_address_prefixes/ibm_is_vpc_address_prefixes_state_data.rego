package ibmcloud.resources.state.data.ibm_is_vpc_address_prefixes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_address_prefixes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpc_address_prefixes", "data").resources[_]
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
address_prefixes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_prefixes", null) |
        res := resources_map[_]
        true
     }
}
