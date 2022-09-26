package ibmcloud.resources.model.ibm_is_backup_policy_plan
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_backup_policy_plan"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_backup_policy_plan").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_backup_policy_plan", "managed").resources[_]
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
copy_user_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "copy_user_tags", null) |
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
cron_spec = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cron_spec", null) |
        res := resources_map[_]
        true
     }
}
active = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "active", null) |
        res := resources_map[_]
        true
     }
}
attach_user_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "attach_user_tags", null) |
        res := resources_map[_]
        true
     }
}
deletion_trigger = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deletion_trigger", null) |
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
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
backup_policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_policy_id", null) |
        res := resources_map[_]
        true
     }
}
backup_policy_plan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_policy_plan_id", null) |
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

