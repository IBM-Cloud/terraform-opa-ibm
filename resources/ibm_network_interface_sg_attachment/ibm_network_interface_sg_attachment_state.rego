package ibmcloud.resources.state.ibm_network_interface_sg_attachment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_network_interface_sg_attachment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_network_interface_sg_attachment", "managed").resources[_]
}
network_interface_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interface_id", null) |
        res := resources_map[_]
        true
     }
}
soft_reboot = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "soft_reboot", null) |
        res := resources_map[_]
        true
     }
}
security_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group_id", null) |
        res := resources_map[_]
        true
     }
}
