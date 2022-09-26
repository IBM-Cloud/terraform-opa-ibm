package ibmcloud.resources.state.data.ibm_is_volumes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_volumes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_volumes", "data").resources[_]
}
volume_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_name", null) |
        res := resources_map[_]
        true
     }
}
zone_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_name", null) |
        res := resources_map[_]
        true
     }
}
volumes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volumes", null) |
        res := resources_map[_]
        true
     }
}
