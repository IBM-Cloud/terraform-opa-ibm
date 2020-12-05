package ibmcloud.resources.planned.ibm_network_interface_sg_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_interface_sg_attachment"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_network_interface_sg_attachment").resources[_]
}
security_group_id = ret {
    ret := {res.address: object.get(res.attributes, "security_group_id", null) |
        res := resources_map[_]
        true
     }
}
network_interface_id = ret {
    ret := {res.address: object.get(res.attributes, "network_interface_id", null) |
        res := resources_map[_]
        true
     }
}
soft_reboot = ret {
    ret := {res.address: object.get(res.attributes, "soft_reboot", null) |
        res := resources_map[_]
        true
     }
}

