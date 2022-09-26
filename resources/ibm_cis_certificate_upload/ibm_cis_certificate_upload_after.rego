package ibmcloud.resources.after.ibm_cis_certificate_upload
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_certificate_upload"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_certificate_upload").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
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
certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate", null) |
        res := resources_map[_]
        true
     }
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}
private_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_key", null) |
        res := resources_map[_]
        true
     }
}
bundle_method = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bundle_method", null) |
        res := resources_map[_]
        true
     }
}

