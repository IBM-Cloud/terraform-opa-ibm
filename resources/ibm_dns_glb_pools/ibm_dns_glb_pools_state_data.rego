package ibmcloud.resources.state.data.ibm_dns_glb_pools
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb_pools"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_glb_pools", "data").resources[_]
}
dns_glb_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_glb_pools", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
