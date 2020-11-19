package ibmcloud.resources.state.ibm_compute_provisioning_hook
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_compute_provisioning_hook"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_provisioning_hook", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
uri = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uri", null) |
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
