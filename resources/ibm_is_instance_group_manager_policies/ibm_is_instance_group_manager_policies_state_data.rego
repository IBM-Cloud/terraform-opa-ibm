package ibmcloud.resources.state.data.ibm_is_instance_group_manager_policies
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_manager_policies"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_group_manager_policies", "data").resources[_]
}
instance_group_manager_policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group_manager_policies", null) |
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
