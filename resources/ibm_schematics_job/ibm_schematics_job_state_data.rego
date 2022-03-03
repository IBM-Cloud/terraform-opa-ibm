package ibmcloud.resources.state.data.ibm_schematics_job
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_job"
}

resources_map[attr]{
    attr := state.get_resources("ibm_schematics_job", "data").resources[_]
}
end_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "end_at", null) |
        res := resources_map[_]
        true
     }
}
bastion = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bastion", null) |
        res := resources_map[_]
        true
     }
}
job_env_settings = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_env_settings", null) |
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
state_store_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state_store_url", null) |
        res := resources_map[_]
        true
     }
}
job_inputs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_inputs", null) |
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
command_object = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "command_object", null) |
        res := resources_map[_]
        true
     }
}
id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "id", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
command_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "command_name", null) |
        res := resources_map[_]
        true
     }
}
command_options = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "command_options", null) |
        res := resources_map[_]
        true
     }
}
submitted_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "submitted_at", null) |
        res := resources_map[_]
        true
     }
}
submitted_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "submitted_by", null) |
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
start_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "start_at", null) |
        res := resources_map[_]
        true
     }
}
log_store_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "log_store_url", null) |
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
log_summary = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "log_summary", null) |
        res := resources_map[_]
        true
     }
}
job_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_id", null) |
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
data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "data", null) |
        res := resources_map[_]
        true
     }
}
results_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "results_url", null) |
        res := resources_map[_]
        true
     }
}
command_object_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "command_object_id", null) |
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
duration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "duration", null) |
        res := resources_map[_]
        true
     }
}
