package ibmcloud.resources.state.data.ibm_dl_ports
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_ports"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_ports", "data").resources[_]
}
location_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_name", null) |
        res := resources_map[_]
        true
     }
}
ports = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ports", null) |
        res := resources_map[_]
        true
     }
}
