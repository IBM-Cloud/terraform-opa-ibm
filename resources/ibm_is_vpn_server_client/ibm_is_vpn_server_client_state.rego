package ibmcloud.resources.state.ibm_is_vpn_server_client
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_client"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_vpn_server_client", "managed").resources[_]
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
status_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_code", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
