package ibmcloud.resources.state.ibm_app_config_feature
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_feature"
}

resources_map[attr]{
    attr := state.get_resources("ibm_app_config_feature", "managed").resources[_]
}
created_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_time", null) |
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
feature_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "feature_id", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
enabled_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled_value", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
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
rollout_percentage = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rollout_percentage", null) |
        res := resources_map[_]
        true
     }
}
segment_rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "segment_rules", null) |
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
updated_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_time", null) |
        res := resources_map[_]
        true
     }
}
disabled_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disabled_value", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
segment_exists = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "segment_exists", null) |
        res := resources_map[_]
        true
     }
}
