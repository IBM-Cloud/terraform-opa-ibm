package ibmcloud.resources.state.data.ibm_cloud_shell_account_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloud_shell_account_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cloud_shell_account_settings", "data").resources[_]
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
default_enable_new_features = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_enable_new_features", null) |
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
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
rev = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rev", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
        res := resources_map[_]
        true
     }
}
default_enable_new_regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_enable_new_regions", null) |
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
regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "regions", null) |
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
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
        res := resources_map[_]
        true
     }
}
