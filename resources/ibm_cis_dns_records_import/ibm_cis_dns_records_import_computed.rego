package ibmcloud.resources.computed.ibm_cis_dns_records_import
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_dns_records_import"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_dns_records_import").resources[_]
}
records_added = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "records_added", null) |
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

