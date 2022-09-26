package ibmcloud.resources.after.ibm_is_vpn_server_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_route"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_vpn_server_route").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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

