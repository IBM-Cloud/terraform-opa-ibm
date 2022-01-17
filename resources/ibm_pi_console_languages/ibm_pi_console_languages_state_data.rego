package ibmcloud.resources.state.data.ibm_pi_console_languages
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_console_languages"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_console_languages", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
console_languages = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "console_languages", null) |
        res := resources_map[_]
        true
     }
}
