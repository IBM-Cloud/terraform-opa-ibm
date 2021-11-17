package ibmcloud.resources.planned.ibm_is_instance_group_membership
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_membership"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_instance_group_membership").resources[_]
}
instance_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group", null) |
        res := resources_map[_]
        true
     }
}
instance_group_membership = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group_membership", null) |
        res := resources_map[_]
        true
     }
}
action_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_delete", null) |
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

