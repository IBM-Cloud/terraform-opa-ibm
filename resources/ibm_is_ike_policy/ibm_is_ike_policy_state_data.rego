package ibmcloud.resources.state.data.ibm_is_ike_policy
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ike_policy"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_ike_policy", "data").resources[_]
}
negotiation_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "negotiation_mode", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
connections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connections", null) |
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
ike_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ike_version", null) |
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
ike_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ike_policy", null) |
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
dh_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dh_group", null) |
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
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
