package ibmcloud.resources.state.data.ibm_dl_gateways
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_gateways"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_gateways", "data").resources[_]
}
gateways = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateways", null) |
        res := resources_map[_]
        true
     }
}
