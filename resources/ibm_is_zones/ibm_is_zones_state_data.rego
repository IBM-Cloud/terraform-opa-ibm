package ibmcloud.resources.state.data.ibm_is_zones
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_zones"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_zones", "data").resources[_]
}
region_ = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region_", null) |
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
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
        res := resources_map[_]
        true
     }
}
