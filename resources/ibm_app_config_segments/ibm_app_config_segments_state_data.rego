package ibmcloud.resources.state.data.ibm_app_config_segments
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_segments"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app_config_segments", "data").resources[_]
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
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
include = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "include", null) |
        res := resources_map[_]
        true
     }
}
expand = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expand", null) |
        res := resources_map[_]
        true
     }
}
limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "limit", null) |
        res := resources_map[_]
        true
     }
}
offset = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offset", null) |
        res := resources_map[_]
        true
     }
}
sort = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sort", null) |
        res := resources_map[_]
        true
     }
}
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}
segments = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "segments", null) |
        res := resources_map[_]
        true
     }
}
