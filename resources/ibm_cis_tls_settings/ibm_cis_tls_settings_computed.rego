package ibmcloud.resources.computed.ibm_cis_tls_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_tls_settings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_tls_settings").resources[_]
}
universal_ssl = ret {
    ret := {res.address: object.get(res.attributes, "universal_ssl", null) |
        res := resources_map[_]
        true
     }
}
tls_1_3 = ret {
    ret := {res.address: object.get(res.attributes, "tls_1_3", null) |
        res := resources_map[_]
        true
     }
}

