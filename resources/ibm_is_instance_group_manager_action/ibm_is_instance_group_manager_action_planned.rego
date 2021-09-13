package ibmcloud.resources.planned.ibm_is_instance_group_manager_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_manager_action"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_instance_group_manager_action").resources[_]
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
run_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "run_at", null) |
        res := resources_map[_]
        true
     }
}
membership_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "membership_count", null) |
        res := resources_map[_]
        true
     }
}
max_membership_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_membership_count", null) |
        res := resources_map[_]
        true
     }
}
min_membership_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "min_membership_count", null) |
        res := resources_map[_]
        true
     }
}
target_manager = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_manager", null) |
        res := resources_map[_]
        true
     }
}

