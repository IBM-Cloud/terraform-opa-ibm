package ibmcloud.resources.computed.ibm_schematics_job
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_job"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_schematics_job").resources[_]
}
start_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "start_at", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
end_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "end_at", null) |
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
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
state_store_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state_store_url", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
log_store_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "log_store_url", null) |
        res := resources_map[_]
        true
     }
}

