package ibmcloud.resources.after.ibm_dl_virtual_connection
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_virtual_connection"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_dl_virtual_connection").resources[_]
}
network_id = ret {
    ret := {res.address: object.get(res.attributes, "network_id", null) |
        res := resources_map[_]
        true
     }
}
gateway = ret {
    ret := {res.address: object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

