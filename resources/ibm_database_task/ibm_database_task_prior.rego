package ibmcloud.resources.prior.ibm_database_task
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_task"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_database_task").resources[_]
}
task_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "task_id", null) |
        res := resources_map[_]
        true
     }
}

