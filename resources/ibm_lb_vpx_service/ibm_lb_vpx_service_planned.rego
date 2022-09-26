package ibmcloud.resources.planned.ibm_lb_vpx_service
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb_vpx_service"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lb_vpx_service").resources[_]
}
destination_port = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_port", null) |
        res := resources_map[_]
        true
     }
}
usip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "usip", null) |
        res := resources_map[_]
        true
     }
}
vip_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vip_id", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
destination_ip_address = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_ip_address", null) |
        res := resources_map[_]
        true
     }
}
weight = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "weight", null) |
        res := resources_map[_]
        true
     }
}
connection_limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connection_limit", null) |
        res := resources_map[_]
        true
     }
}
health_check = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_check", null) |
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

