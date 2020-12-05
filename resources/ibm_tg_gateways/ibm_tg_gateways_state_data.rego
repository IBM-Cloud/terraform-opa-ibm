package ibmcloud.resources.state.data.ibm_tg_gateways
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_gateways"
}

resources_map[attr]{
    attr := state.get_resources("ibm_tg_gateways", "data").resources[_]
}
transit_gateways = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "transit_gateways", null) |
        res := resources_map[_]
        true
     }
}
