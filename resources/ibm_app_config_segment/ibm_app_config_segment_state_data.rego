package ibmcloud.resources.state.data.ibm_app_config_segment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_segment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app_config_segment", "data").resources[_]
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
features = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "features", null) |
        res := resources_map[_]
        true
     }
}
properties = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "properties", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
includes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "includes", null) |
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
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}
segment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "segment_id", null) |
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
