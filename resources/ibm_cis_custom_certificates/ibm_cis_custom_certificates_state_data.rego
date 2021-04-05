package ibmcloud.resources.state.data.ibm_cis_custom_certificates
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_custom_certificates"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_custom_certificates", "data").resources[_]
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
custom_certificates = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "custom_certificates", null) |
        res := resources_map[_]
        true
     }
}
