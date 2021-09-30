package ibmcloud.resources.state.data.ibm_satellite_location_nlb_dns
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location_nlb_dns"
}

resources_map[attr]{
    attr := state.get_resources("ibm_satellite_location_nlb_dns", "data").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
nlb_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "nlb_config", null) |
        res := resources_map[_]
        true
     }
}
