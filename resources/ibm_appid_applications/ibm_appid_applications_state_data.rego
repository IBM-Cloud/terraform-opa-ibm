package ibmcloud.resources.state.data.ibm_appid_applications
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_applications"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_applications", "data").resources[_]
}
applications = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "applications", null) |
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
