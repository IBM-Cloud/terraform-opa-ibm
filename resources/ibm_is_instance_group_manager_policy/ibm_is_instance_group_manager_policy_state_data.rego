package ibmcloud.resources.state.data.ibm_is_instance_group_manager_policy
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_manager_policy"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_group_manager_policy", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
metric_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metric_type", null) |
        res := resources_map[_]
        true
     }
}
metric_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metric_value", null) |
        res := resources_map[_]
        true
     }
}
policy_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_type", null) |
        res := resources_map[_]
        true
     }
}
policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_id", null) |
        res := resources_map[_]
        true
     }
}
instance_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group", null) |
        res := resources_map[_]
        true
     }
}
instance_group_manager = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group_manager", null) |
        res := resources_map[_]
        true
     }
}
