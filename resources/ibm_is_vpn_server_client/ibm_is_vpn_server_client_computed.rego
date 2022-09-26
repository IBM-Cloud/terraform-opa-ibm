package ibmcloud.resources.computed.ibm_is_vpn_server_client
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_vpn_server_client"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_vpn_server_client").resources[_]
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

