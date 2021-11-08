package ibmcloud.resources.state.ibm_appid_cloud_directory_template
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_cloud_directory_template"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_cloud_directory_template", "managed").resources[_]
}
base64_encoded_html_body = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base64_encoded_html_body", null) |
        res := resources_map[_]
        true
     }
}
plain_text_body = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plain_text_body", null) |
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
template_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_name", null) |
        res := resources_map[_]
        true
     }
}
language = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "language", null) |
        res := resources_map[_]
        true
     }
}
subject = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subject", null) |
        res := resources_map[_]
        true
     }
}
html_body = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "html_body", null) |
        res := resources_map[_]
        true
     }
}
