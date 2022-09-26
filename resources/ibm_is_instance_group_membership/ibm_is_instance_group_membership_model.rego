package ibmcloud.resources.model.ibm_is_instance_group_membership
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_membership"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_instance_group_membership").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_is_instance_group_membership", "managed").resources[_]
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
load_balancer_pool_member = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancer_pool_member", null) |
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
delete_instance_on_membership_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "delete_instance_on_membership_delete", null) |
        res := resources_map[_]
        true
     }
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
        res := resources_map[_]
        true
     }
}
instance_template = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_template", null) |
        res := resources_map[_]
        true
     }
}

