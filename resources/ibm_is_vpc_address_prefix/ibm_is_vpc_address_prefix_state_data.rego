package ibmcloud.resources.state.data.ibm_is_vpc_address_prefix
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpc_address_prefix"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpc_address_prefix", "data").resources[_]
}
vpc_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_name", null) |
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
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
is_default = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_default", null) |
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
address_prefix = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_prefix", null) |
        res := resources_map[_]
        true
     }
}
address_prefix_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_prefix_name", null) |
        res := resources_map[_]
        true
     }
}
cidr = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cidr", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
has_subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "has_subnets", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
