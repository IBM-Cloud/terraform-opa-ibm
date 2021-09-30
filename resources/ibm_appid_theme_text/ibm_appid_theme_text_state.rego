package ibmcloud.resources.state.ibm_appid_theme_text
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_theme_text"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_theme_text", "managed").resources[_]
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
tab_title = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tab_title", null) |
        res := resources_map[_]
        true
     }
}
footnote = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "footnote", null) |
        res := resources_map[_]
        true
     }
}
