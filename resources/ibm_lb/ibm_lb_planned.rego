package ibmcloud.resources.planned.ibm_lb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lb"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_lb").resources[_]
}
security_certificate_id = ret {
    ret := {res.address: object.get(res.attributes, "security_certificate_id", null) |
        res := resources_map[_]
        true
     }
}
dedicated = ret {
    ret := {res.address: object.get(res.attributes, "dedicated", null) |
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
connections = ret {
    ret := {res.address: object.get(res.attributes, "connections", null) |
        res := resources_map[_]
        true
     }
}
datacenter = ret {
    ret := {res.address: object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
ha_enabled = ret {
    ret := {res.address: object.get(res.attributes, "ha_enabled", null) |
        res := resources_map[_]
        true
     }
}
ssl_offload = ret {
    ret := {res.address: object.get(res.attributes, "ssl_offload", null) |
        res := resources_map[_]
        true
     }
}

