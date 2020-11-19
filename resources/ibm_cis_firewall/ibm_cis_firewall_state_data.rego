package ibmcloud.resources.state.data.ibm_cis_firewall
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_cis_firewall"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_firewall", "data").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
firewall_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "firewall_type", null) |
        res := resources_map[_]
        true
     }
}
lockdown = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "lockdown", null) |
        res := resources_map[_]
        true
     }
}
