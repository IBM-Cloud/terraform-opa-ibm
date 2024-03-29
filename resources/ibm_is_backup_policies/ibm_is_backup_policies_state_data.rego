package ibmcloud.resources.state.data.ibm_is_backup_policies
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_backup_policies"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_backup_policies", "data").resources[_]
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
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
tag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tag", null) |
        res := resources_map[_]
        true
     }
}
backup_policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_policies", null) |
        res := resources_map[_]
        true
     }
}
