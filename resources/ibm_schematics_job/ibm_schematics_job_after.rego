package ibmcloud.resources.after.ibm_schematics_job
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_job"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_schematics_job").resources[_]
}
command_object = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "command_object", null) |
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
job_inputs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_inputs", null) |
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
command_object_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "command_object_id", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
job_env_settings = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_env_settings", null) |
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
job_log_summary = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "job_log_summary", null) |
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

