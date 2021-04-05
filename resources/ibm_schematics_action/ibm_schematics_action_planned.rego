package ibmcloud.resources.planned.ibm_schematics_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_action"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_schematics_action").resources[_]
}
bastion = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bastion", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
source = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source", null) |
        res := resources_map[_]
        true
     }
}
source_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_type", null) |
        res := resources_map[_]
        true
     }
}
action_inputs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_inputs", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
command_parameter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "command_parameter", null) |
        res := resources_map[_]
        true
     }
}
action_outputs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_outputs", null) |
        res := resources_map[_]
        true
     }
}
settings = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "settings", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
source_readme_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_readme_url", null) |
        res := resources_map[_]
        true
     }
}
credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials", null) |
        res := resources_map[_]
        true
     }
}
x_github_token = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "x_github_token", null) |
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
trigger_record_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "trigger_record_id", null) |
        res := resources_map[_]
        true
     }
}
targets_ini = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "targets_ini", null) |
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

