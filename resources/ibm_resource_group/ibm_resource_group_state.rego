package ibmcloud.resources.state.ibm_resource_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_resource_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_resource_group", "managed").resources[_]
}
state_ = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state_", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
