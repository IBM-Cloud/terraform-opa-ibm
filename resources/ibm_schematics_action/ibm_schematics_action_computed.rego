package ibmcloud.resources.computed.ibm_schematics_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_action"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_schematics_action").resources[_]
}
source_created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_created_by", null) |
        res := resources_map[_]
        true
     }
}
source_updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_updated_at", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
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
user_state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_state", null) |
        res := resources_map[_]
        true
     }
}
source_created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_created_at", null) |
        res := resources_map[_]
        true
     }
}
account = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account", null) |
        res := resources_map[_]
        true
     }
}
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
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
playbook_names = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "playbook_names", null) |
        res := resources_map[_]
        true
     }
}
sys_lock = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sys_lock", null) |
        res := resources_map[_]
        true
     }
}
source_updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_updated_by", null) |
        res := resources_map[_]
        true
     }
}

