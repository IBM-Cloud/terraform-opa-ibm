package ibmcloud.resources.state.data.ibm_dns_glbs
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glbs"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_glbs", "data").resources[_]
}
dns_glbs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_glbs", null) |
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
zone_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}
