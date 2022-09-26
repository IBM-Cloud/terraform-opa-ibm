package ibmcloud.resources.state.data.ibm_dl_port
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_port"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dl_port", "data").resources[_]
}
location_display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_display_name", null) |
        res := resources_map[_]
        true
     }
}
location_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_name", null) |
        res := resources_map[_]
        true
     }
}
provider_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provider_name", null) |
        res := resources_map[_]
        true
     }
}
supported_link_speeds = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "supported_link_speeds", null) |
        res := resources_map[_]
        true
     }
}
port_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "port_id", null) |
        res := resources_map[_]
        true
     }
}
direct_link_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "direct_link_count", null) |
        res := resources_map[_]
        true
     }
}
label = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "label", null) |
        res := resources_map[_]
        true
     }
}
