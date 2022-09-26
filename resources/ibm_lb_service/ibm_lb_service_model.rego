package ibmcloud.resources.model.ibm_lb_service
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_service"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lb_service").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_lb_service", "managed").resources[_]
}
weight = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "weight", null) |
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
service_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_group_id", null) |
        res := resources_map[_]
        true
     }
}
ip_address_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ip_address_id", null) |
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
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
health_check_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_check_type", null) |
        res := resources_map[_]
        true
     }
}

