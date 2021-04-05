package ibmcloud.resources.after.ibm_compute_ssl_certificate
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_ssl_certificate"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_compute_ssl_certificate").resources[_]
}
certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "certificate", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
intermediate_certificate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "intermediate_certificate", null) |
        res := resources_map[_]
        true
     }
}

