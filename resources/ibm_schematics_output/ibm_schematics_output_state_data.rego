package ibmcloud.resources.state.data.ibm_schematics_output
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_output"
}

resources_map[attr]{
    attr := state.get_resources("ibm_schematics_output", "data").resources[_]
}
template_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_id", null) |
        res := resources_map[_]
        true
     }
}
output_values = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "output_values", null) |
        res := resources_map[_]
        true
     }
}
output_json = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "output_json", null) |
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
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
