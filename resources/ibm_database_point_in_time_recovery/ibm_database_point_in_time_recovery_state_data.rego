package ibmcloud.resources.state.data.ibm_database_point_in_time_recovery
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database_point_in_time_recovery"
}

resources_map[attr]{
    attr := state.get_resources("ibm_database_point_in_time_recovery", "data").resources[_]
}
deployment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deployment_id", null) |
        res := resources_map[_]
        true
     }
}
earliest_point_in_time_recovery_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "earliest_point_in_time_recovery_time", null) |
        res := resources_map[_]
        true
     }
}
