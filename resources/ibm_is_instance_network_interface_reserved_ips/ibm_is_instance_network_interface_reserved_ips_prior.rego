package ibmcloud.resources.prior.ibm_is_instance_network_interface_reserved_ips
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance_network_interface_reserved_ips"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_instance_network_interface_reserved_ips").resources[_]
}
instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance", null) |
        res := resources_map[_]
        true
     }
}
network_interface = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "network_interface", null) |
        res := resources_map[_]
        true
     }
}

