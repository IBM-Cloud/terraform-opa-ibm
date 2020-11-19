package ibmcloud.resources.state.data.ibm_tg_location
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_tg_location"
}

resources_map[attr]{
    attr := state.get_resources("ibm_tg_location", "data").resources[_]
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
billing_location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "billing_location", null) |
        res := resources_map[_]
        true
     }
}
local_connection_locations = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "local_connection_locations", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
