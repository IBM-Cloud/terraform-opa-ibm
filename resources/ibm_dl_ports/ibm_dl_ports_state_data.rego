package ibmcloud.resources.state.data.ibm_dl_ports
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dl_ports"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_ports", "data").resources[_]
}
ports = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ports", null) |
        res := resources_map[_]
        true
     }
}
