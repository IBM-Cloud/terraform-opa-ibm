package ibmcloud.resources.state.data.ibm_cis_ip_addresses
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_cis_ip_addresses"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_ip_addresses", "data").resources[_]
}
ipv4_cidrs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv4_cidrs", null) |
        res := resources_map[_]
        true
     }
}
ipv6_cidrs = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ipv6_cidrs", null) |
        res := resources_map[_]
        true
     }
}
