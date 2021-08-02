package ibmcloud.resources.state.data.ibm_dns_permitted_networks
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_permitted_networks"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_permitted_networks", "data").resources[_]
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
dns_permitted_networks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_permitted_networks", null) |
        res := resources_map[_]
        true
     }
}
