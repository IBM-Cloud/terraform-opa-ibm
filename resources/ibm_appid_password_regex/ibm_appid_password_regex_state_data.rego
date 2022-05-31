package ibmcloud.resources.state.data.ibm_appid_password_regex
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_password_regex"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_password_regex", "data").resources[_]
}
base64_encoded_regex = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base64_encoded_regex", null) |
        res := resources_map[_]
        true
     }
}
error_message = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "error_message", null) |
        res := resources_map[_]
        true
     }
}
regex = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "regex", null) |
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
