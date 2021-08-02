package ibmcloud.resources.computed.ibm_is_ipsec_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_ipsec_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_ipsec_policy").resources[_]
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
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
encapsulation_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encapsulation_mode", null) |
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
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}

