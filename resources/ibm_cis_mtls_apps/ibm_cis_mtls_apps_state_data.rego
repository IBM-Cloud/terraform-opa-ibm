package ibmcloud.resources.state.data.ibm_cis_mtls_apps
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_mtls_apps"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_mtls_apps", "data").resources[_]
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
mtls_access_apps = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mtls_access_apps", null) |
        res := resources_map[_]
        true
     }
}
mtls_access_app_policies = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mtls_access_app_policies", null) |
        res := resources_map[_]
        true
     }
}
