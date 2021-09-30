package ibmcloud.resources.planned.ibm_cis_dns_records_import
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_dns_records_import"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_dns_records_import").resources[_]
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
file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file", null) |
        res := resources_map[_]
        true
     }
}

