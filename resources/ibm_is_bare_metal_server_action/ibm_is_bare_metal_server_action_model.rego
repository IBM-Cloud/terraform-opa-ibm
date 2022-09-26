package ibmcloud.resources.model.ibm_is_bare_metal_server_action
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_action"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_bare_metal_server_action").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_server_action", "managed").resources[_]
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
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

