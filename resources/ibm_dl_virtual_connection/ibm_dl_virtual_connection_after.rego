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
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_id", null) |
        res := resources_map[_]
        true
     }
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}

