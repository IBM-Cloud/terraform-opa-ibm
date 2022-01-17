package ibmcloud.resources.state.ibm_cis_dns_records_import
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_dns_records_import"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_dns_records_import", "managed").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file", null) |
        res := resources_map[_]
        true
     }
}
total_records_parsed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_records_parsed", null) |
        res := resources_map[_]
        true
     }
}
records_added = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "records_added", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
