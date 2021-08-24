package ibmcloud.resources.after.ibm_is_instance_group_manager
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_manager"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_instance_group_manager").resources[_]
}
manager_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "manager_type", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
enable_manager = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable_manager", null) |
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
aggregation_window = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "aggregation_window", null) |
        res := resources_map[_]
        true
     }
}
cooldown = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cooldown", null) |
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

