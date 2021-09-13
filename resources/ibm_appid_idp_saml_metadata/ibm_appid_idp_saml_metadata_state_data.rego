package ibmcloud.resources.state.data.ibm_appid_idp_saml_metadata
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_idp_saml_metadata"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_idp_saml_metadata", "data").resources[_]
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
metadata = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metadata", null) |
        res := resources_map[_]
        true
     }
}
