package ibmcloud.resources.state.data.ibm_dl_provider_ports
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_provider_ports"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_provider_ports", "data").resources[_]
}
ports = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ports", null) |
        res := resources_map[_]
        true
     }
}
