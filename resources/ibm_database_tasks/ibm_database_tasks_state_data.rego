package ibmcloud.resources.state.data.ibm_database_tasks
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_tasks"
}

resources_map[attr]{
    attr := state.get_resources("ibm_database_tasks", "data").resources[_]
}
deployment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deployment_id", null) |
        res := resources_map[_]
        true
     }
}
tasks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tasks", null) |
        res := resources_map[_]
        true
     }
}
