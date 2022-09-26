package ibmcloud.resources.model.ibm_pi_operations
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_operations"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_pi_operations").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_pi_operations", "managed").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_status", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addresses", null) |
        res := resources_map[_]
        true
     }
}
pi_health_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_health_status", null) |
        res := resources_map[_]
        true
     }
}
pi_operation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_operation", null) |
        res := resources_map[_]
        true
     }
}
pi_progress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_progress", null) |
        res := resources_map[_]
        true
     }
}

