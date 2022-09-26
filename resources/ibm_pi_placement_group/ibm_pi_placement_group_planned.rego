package ibmcloud.resources.planned.ibm_pi_placement_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_placement_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_placement_group").resources[_]
}
pi_placement_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_placement_group_name", null) |
        res := resources_map[_]
        true
     }
}
pi_placement_group_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_placement_group_policy", null) |
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

