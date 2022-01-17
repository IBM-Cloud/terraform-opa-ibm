package ibmcloud.resources.model.ibm_satellite_location_nlb_dns
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location_nlb_dns"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_satellite_location_nlb_dns").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_satellite_location_nlb_dns", "managed").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ips", null) |
        res := resources_map[_]
        true
     }
}

