package ibmcloud.resources.state.ibm_is_ipsec_policy
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ipsec_policy"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_ipsec_policy", "managed").resources[_]
}
vpn_connections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_connections", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
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
encryption_algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption_algorithm", null) |
        res := resources_map[_]
        true
     }
}
pfs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pfs", null) |
        res := resources_map[_]
        true
     }
}
encapsulation_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encapsulation_mode", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}
authentication_algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "authentication_algorithm", null) |
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
key_lifetime = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_lifetime", null) |
        res := resources_map[_]
        true
     }
}
transform_protocol = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "transform_protocol", null) |
        res := resources_map[_]
        true
     }
}
