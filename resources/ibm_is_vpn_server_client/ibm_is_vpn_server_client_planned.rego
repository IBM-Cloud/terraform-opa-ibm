package ibmcloud.resources.planned.ibm_is_vpn_server_client
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_client"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_vpn_server_client").resources[_]
}
vpn_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_server", null) |
        res := resources_map[_]
        true
     }
}
vpn_client = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpn_client", null) |
        res := resources_map[_]
        true
     }
}
delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "delete", null) |
        res := resources_map[_]
        true
     }
}

