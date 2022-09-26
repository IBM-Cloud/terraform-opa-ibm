package ibmcloud.resources.after.ibm_satellite_link
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_link"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_satellite_link").resources[_]
}
ws_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ws_endpoint", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}

