package ibmcloud.resources.state.data.ibm_satellite_link
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_link"
}

resources_map[attr]{
    attr := state.get_resources("ibm_satellite_link", "data").resources[_]
}
ws_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ws_endpoint", null) |
        res := resources_map[_]
        true
     }
}
last_change = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_change", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
satellite_link_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "satellite_link_host", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
performance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "performance", null) |
        res := resources_map[_]
        true
     }
}
