package ibmcloud.resources.after.ibm_is_backup_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_backup_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_backup_policy").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
match_resource_types = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "match_resource_types", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
match_user_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "match_user_tags", null) |
        res := resources_map[_]
        true
     }
}

