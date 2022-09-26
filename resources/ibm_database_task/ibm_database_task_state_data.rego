package ibmcloud.resources.state.data.ibm_database_task
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_task"
}

resources_map[attr]{
    attr := state.get_resources("ibm_database_task", "data").resources[_]
}
task_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "task_id", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
deployment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deployment_id", null) |
        res := resources_map[_]
        true
     }
}
progress_percent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "progress_percent", null) |
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
