package ibmcloud.resources.state.data.ibm_is_flow_logs
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_flow_logs"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_flow_logs", "data").resources[_]
}
flow_log_collectors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flow_log_collectors", null) |
        res := resources_map[_]
        true
     }
}
