package ibmcloud.resources.state.ibm_container_addons
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_addons"
}

resources_map[attr]{
    attr := state.get_resources("ibm_container_addons", "managed").resources[_]
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
addons = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addons", null) |
        res := resources_map[_]
        true
     }
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}
