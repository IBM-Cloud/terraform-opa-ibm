package ibmcloud.resources.model.ibm_compute_monitor
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_monitor"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_compute_monitor").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_compute_monitor", "managed").resources[_]
}
query_type_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "query_type_id", null) |
        res := resources_map[_]
        true
     }
}
response_action_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "response_action_id", null) |
        res := resources_map[_]
        true
     }
}
wait_cycles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_cycles", null) |
        res := resources_map[_]
        true
     }
}
notified_users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notified_users", null) |
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
guest_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guest_id", null) |
        res := resources_map[_]
        true
     }
}
ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address", null) |
        res := resources_map[_]
        true
     }
}

