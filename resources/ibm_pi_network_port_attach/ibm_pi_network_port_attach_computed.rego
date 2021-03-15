package ibmcloud.resources.computed.ibm_pi_network_port_attach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_network_port_attach"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_network_port_attach").resources[_]
}
public_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_ip", null) |
        res := resources_map[_]
        true
     }
}

