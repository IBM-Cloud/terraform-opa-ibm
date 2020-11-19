package ibmcloud.resources.state.data.ibm_is_zone
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_zone"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_zone", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
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
