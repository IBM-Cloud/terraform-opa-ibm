package ibmcloud.resources.after.ibm_lb_service_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_service_group"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_lb_service_group").resources[_]
}
allocation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allocation", null) |
        res := resources_map[_]
        true
     }
}
port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
routing_method = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_method", null) |
        res := resources_map[_]
        true
     }
}
load_balancer_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "load_balancer_id", null) |
        res := resources_map[_]
        true
     }
}
routing_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routing_type", null) |
        res := resources_map[_]
        true
     }
}
timeout = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "timeout", null) |
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

