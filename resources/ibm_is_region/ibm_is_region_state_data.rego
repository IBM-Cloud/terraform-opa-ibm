package ibmcloud.resources.state.data.ibm_is_region
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_region"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_region", "data").resources[_]
}
endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
