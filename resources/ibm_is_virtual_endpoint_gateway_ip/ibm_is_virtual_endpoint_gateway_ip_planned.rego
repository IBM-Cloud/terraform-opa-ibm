package ibmcloud.resources.planned.ibm_is_virtual_endpoint_gateway_ip
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_virtual_endpoint_gateway_ip"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_virtual_endpoint_gateway_ip").resources[_]
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
reserved_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reserved_ip", null) |
        res := resources_map[_]
        true
     }
}

