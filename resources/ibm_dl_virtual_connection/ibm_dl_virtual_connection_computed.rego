package ibmcloud.resources.computed.ibm_dl_virtual_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_virtual_connection"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dl_virtual_connection").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
virtual_connection_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_connection_id", null) |
        res := resources_map[_]
        true
     }
}
network_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_id", null) |
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
network_account = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_account", null) |
        res := resources_map[_]
        true
     }
}
related_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "related_crn", null) |
        res := resources_map[_]
        true
     }
}

