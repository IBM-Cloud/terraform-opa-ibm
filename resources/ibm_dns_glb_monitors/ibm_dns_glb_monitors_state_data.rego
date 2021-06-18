package ibmcloud.resources.state.data.ibm_dns_glb_monitors
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb_monitors"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_glb_monitors", "data").resources[_]
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
dns_glb_monitors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_glb_monitors", null) |
        res := resources_map[_]
        true
     }
}
