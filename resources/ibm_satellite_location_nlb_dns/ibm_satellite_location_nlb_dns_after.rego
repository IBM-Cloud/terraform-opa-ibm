package ibmcloud.resources.after.ibm_satellite_location_nlb_dns
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location_nlb_dns"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_satellite_location_nlb_dns").resources[_]
}
ips = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ips", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}

