package ibmcloud.resources.state.data.ibm_cis_mtlss
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_mtlss"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_mtlss", "data").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
mtls_certificates = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mtls_certificates", null) |
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
