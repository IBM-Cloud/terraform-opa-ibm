package ibmcloud.resources.state.data.ibm_pi_placement_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_placement_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_placement_group", "data").resources[_]
}
policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
members = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members", null) |
        res := resources_map[_]
        true
     }
}
pi_placement_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_placement_group_name", null) |
        res := resources_map[_]
        true
     }
}
