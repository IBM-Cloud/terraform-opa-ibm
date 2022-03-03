package ibmcloud.resources.computed.ibm_is_bare_metal_server_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_action"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_bare_metal_server_action").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
status_reasons = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_reasons", null) |
        res := resources_map[_]
        true
     }
}

