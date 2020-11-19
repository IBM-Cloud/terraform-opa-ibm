package ibmcloud.resources.prior.ibm_dl_port
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dl_port"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_dl_port").resources[_]
}
port_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_id", null) |
        res := resources_map[_]
        true
     }
}

