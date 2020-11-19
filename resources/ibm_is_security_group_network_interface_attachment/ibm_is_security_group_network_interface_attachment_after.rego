package ibmcloud.resources.after.ibm_is_security_group_network_interface_attachment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_security_group_network_interface_attachment"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_security_group_network_interface_attachment").resources[_]
}
network_interface = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interface", null) |
        res := resources_map[_]
        true
     }
}
security_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "security_group", null) |
        res := resources_map[_]
        true
     }
}

