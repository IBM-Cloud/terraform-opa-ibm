package ibmcloud.resources.planned.ibm_lb_vpx_service
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_vpx_service"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lb_vpx_service").resources[_]
}
vip_id = ret {
    ret := {res.address: object.get(res.attributes, "vip_id", null) |
        res := resources_map[_]
        true
     }
}
destination_ip_address = ret {
    ret := {res.address: object.get(res.attributes, "destination_ip_address", null) |
        res := resources_map[_]
        true
     }
}
connection_limit = ret {
    ret := {res.address: object.get(res.attributes, "connection_limit", null) |
        res := resources_map[_]
        true
     }
}
health_check = ret {
    ret := {res.address: object.get(res.attributes, "health_check", null) |
        res := resources_map[_]
        true
     }
}
usip = ret {
    ret := {res.address: object.get(res.attributes, "usip", null) |
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
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
destination_port = ret {
    ret := {res.address: object.get(res.attributes, "destination_port", null) |
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

