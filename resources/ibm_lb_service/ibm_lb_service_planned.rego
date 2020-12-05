package ibmcloud.resources.planned.ibm_lb_service
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_service"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lb_service").resources[_]
}
port = ret {
    ret := {res.address: object.get(res.attributes, "port", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {res.address: object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
health_check_type = ret {
    ret := {res.address: object.get(res.attributes, "health_check_type", null) |
        res := resources_map[_]
        true
     }
}
weight = ret {
    ret := {res.address: object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
service_group_id = ret {
    ret := {res.address: object.get(res.attributes, "service_group_id", null) |
        res := resources_map[_]
        true
     }
}
ip_address_id = ret {
    ret := {res.address: object.get(res.attributes, "ip_address_id", null) |
        res := resources_map[_]
        true
     }
}

