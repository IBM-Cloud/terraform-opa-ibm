package ibmcloud.resources.state.data.ibm_is_backup_policy
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_backup_policy"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_backup_policy", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
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
match_user_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "match_user_tags", null) |
        res := resources_map[_]
        true
     }
}
plans = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plans", null) |
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
identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identifier", null) |
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
last_job_completed_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_job_completed_at", null) |
        res := resources_map[_]
        true
     }
}
lifecycle_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lifecycle_state", null) |
        res := resources_map[_]
        true
     }
}
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
