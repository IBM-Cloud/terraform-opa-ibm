package ibmcloud.resources.computed.ibm_is_instance_group_manager_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_group_manager_action"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_instance_group_manager_action").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
last_applied_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_applied_at", null) |
        res := resources_map[_]
        true
     }
}
auto_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auto_delete", null) |
        res := resources_map[_]
        true
     }
}
target_manager_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_manager_name", null) |
        res := resources_map[_]
        true
     }
}
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
action_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_type", null) |
        res := resources_map[_]
        true
     }
}
next_run_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "next_run_at", null) |
        res := resources_map[_]
        true
     }
}
auto_delete_timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auto_delete_timeout", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
action_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_id", null) |
        res := resources_map[_]
        true
     }
}

