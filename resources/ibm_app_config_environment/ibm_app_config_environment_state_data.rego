package ibmcloud.resources.state.data.ibm_app_config_environment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_environment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app_config_environment", "data").resources[_]
}
expand = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expand", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
updated_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_time", null) |
        res := resources_map[_]
        true
     }
}
color_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "color_code", null) |
        res := resources_map[_]
        true
     }
}
created_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_time", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}
environment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "environment_id", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
