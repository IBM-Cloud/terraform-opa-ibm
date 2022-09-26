package ibmcloud.resources.computed.ibm_cloud_shell_account_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloud_shell_account_settings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cloud_shell_account_settings").resources[_]
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
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
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
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
features = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "features", null) |
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

