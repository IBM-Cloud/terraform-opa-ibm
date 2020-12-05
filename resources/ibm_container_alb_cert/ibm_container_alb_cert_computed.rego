package ibmcloud.resources.computed.ibm_container_alb_cert
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_alb_cert"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_alb_cert").resources[_]
}
expires_on = ret {
    ret := {res.address: object.get(res.attributes, "expires_on", null) |
        res := resources_map[_]
        true
     }
}
issuer_name = ret {
    ret := {res.address: object.get(res.attributes, "issuer_name", null) |
        res := resources_map[_]
        true
     }
}
cluster_crn = ret {
    ret := {res.address: object.get(res.attributes, "cluster_crn", null) |
        res := resources_map[_]
        true
     }
}
cloud_cert_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "cloud_cert_instance_id", null) |
        res := resources_map[_]
        true
     }
}
domain_name = ret {
    ret := {res.address: object.get(res.attributes, "domain_name", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {res.address: object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}

