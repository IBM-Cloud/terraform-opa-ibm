package ibmcloud.resources.model.ibm_is_ike_policy
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ike_policy"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_ike_policy").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_ike_policy", "managed").resources[_]
}
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
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
negotiation_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "negotiation_mode", null) |
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
encryption_algorithm = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption_algorithm", null) |
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

