package ibmcloud.resources.model.ibm_is_vpn_server_route
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_route"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_vpn_server_route").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_server_route", "managed").resources[_]
}
vpn_route = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_route", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
lifecycle_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lifecycle_state", null) |
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
vpn_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server", null) |
        res := resources_map[_]
        true
     }
}
destination = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination", null) |
        res := resources_map[_]
        true
     }
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}

