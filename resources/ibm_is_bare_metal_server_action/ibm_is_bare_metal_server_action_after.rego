package ibmcloud.resources.after.ibm_is_bare_metal_server_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_action"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_bare_metal_server_action").resources[_]
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
}
stop_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "stop_type", null) |
        res := resources_map[_]
        true
     }
}

