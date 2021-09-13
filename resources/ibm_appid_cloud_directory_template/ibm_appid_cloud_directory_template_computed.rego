package ibmcloud.resources.computed.ibm_appid_cloud_directory_template
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_cloud_directory_template"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_appid_cloud_directory_template").resources[_]
}
base64_encoded_html_body = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base64_encoded_html_body", null) |
        res := resources_map[_]
        true
     }
}

