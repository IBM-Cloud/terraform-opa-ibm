package ibmcloud.resources.state.data.ibm_schematics_state
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_state"
}

resources_map[attr]{
    attr := state.get_resources("ibm_schematics_state", "data").resources[_]
}
state_store_json = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state_store_json", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
workspace_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "workspace_id", null) |
        res := resources_map[_]
        true
     }
}
template_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_id", null) |
        res := resources_map[_]
        true
     }
}
state_store = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state_store", null) |
        res := resources_map[_]
        true
     }
}
