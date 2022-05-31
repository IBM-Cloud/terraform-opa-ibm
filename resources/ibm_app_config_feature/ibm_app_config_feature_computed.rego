package ibmcloud.resources.computed.ibm_app_config_feature
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_feature"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_app_config_feature").resources[_]
}
segment_exists = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "segment_exists", null) |
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
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}

