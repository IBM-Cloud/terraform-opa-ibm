package ibmcloud.resources.computed.ibm_appid_password_regex
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_password_regex"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_appid_password_regex").resources[_]
}
base64_encoded_regex = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base64_encoded_regex", null) |
        res := resources_map[_]
        true
     }
}

