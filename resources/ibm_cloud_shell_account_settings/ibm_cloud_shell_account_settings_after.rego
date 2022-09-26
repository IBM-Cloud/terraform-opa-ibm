package ibmcloud.resources.after.ibm_cloud_shell_account_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloud_shell_account_settings"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cloud_shell_account_settings").resources[_]
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
default_enable_new_features = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_enable_new_features", null) |
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
default_enable_new_regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_enable_new_regions", null) |
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
features = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "features", null) |
        res := resources_map[_]
        true
     }
}

