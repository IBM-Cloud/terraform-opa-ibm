package ibmcloud.resources.state.data.ibm_app_config_features
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_features"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app_config_features", "data").resources[_]
}
features = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "features", null) |
        res := resources_map[_]
        true
     }
}
first = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "first", null) |
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
expand = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expand", null) |
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
limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "limit", null) |
        res := resources_map[_]
        true
     }
}
next = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "next", null) |
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
segments = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "segments", null) |
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
last = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last", null) |
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
sort = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sort", null) |
        res := resources_map[_]
        true
     }
}
collections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "collections", null) |
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
previous = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "previous", null) |
        res := resources_map[_]
        true
     }
}
