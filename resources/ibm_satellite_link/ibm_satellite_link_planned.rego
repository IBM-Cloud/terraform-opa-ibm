package ibmcloud.resources.planned.ibm_satellite_link
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_link"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_satellite_link").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
ws_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ws_endpoint", null) |
        res := resources_map[_]
        true
     }
}

