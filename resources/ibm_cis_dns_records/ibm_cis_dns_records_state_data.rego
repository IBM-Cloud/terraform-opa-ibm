package ibmcloud.resources.state.data.ibm_cis_dns_records
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_dns_records"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_dns_records", "data").resources[_]
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
cis_dns_records = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_dns_records", null) |
        res := resources_map[_]
        true
     }
}
