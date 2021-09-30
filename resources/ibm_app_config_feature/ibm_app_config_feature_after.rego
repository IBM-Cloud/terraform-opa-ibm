package ibmcloud.resources.after.ibm_app_config_feature
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_feature"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_app_config_feature").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
enabled_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled_value", null) |
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
disabled_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disabled_value", null) |
        res := resources_map[_]
        true
     }
}

