package ibmcloud.resources.state.data.ibm_appid_application_scopes
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_application_scopes"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_application_scopes", "data").resources[_]
}
scopes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scopes", null) |
        res := resources_map[_]
        true
     }
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
client_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_id", null) |
        res := resources_map[_]
        true
     }
}
