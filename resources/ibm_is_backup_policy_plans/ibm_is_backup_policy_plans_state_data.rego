package ibmcloud.resources.state.data.ibm_is_backup_policy_plans
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_backup_policy_plans"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_backup_policy_plans", "data").resources[_]
}
backup_policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_policy_id", null) |
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
plans = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plans", null) |
        res := resources_map[_]
        true
     }
}
