package ibmcloud.resources.model.ibm_cis_certificate_upload
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_certificate_upload"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_certificate_upload").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cis_certificate_upload", "managed").resources[_]
}
priority = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "priority", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
issuer = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "issuer", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
expires_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expires_on", null) |
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
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
custom_cert_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "custom_cert_id", null) |
        res := resources_map[_]
        true
     }
}
uploaded_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uploaded_on", null) |
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
hosts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hosts", null) |
        res := resources_map[_]
        true
     }
}
signature = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "signature", null) |
        res := resources_map[_]
        true
     }
}

