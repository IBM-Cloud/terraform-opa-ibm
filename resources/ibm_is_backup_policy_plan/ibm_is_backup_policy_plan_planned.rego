package ibmcloud.resources.planned.ibm_is_backup_policy_plan
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_backup_policy_plan"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_backup_policy_plan").resources[_]
}
attach_user_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "attach_user_tags", null) |
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
backup_policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_policy_id", null) |
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

