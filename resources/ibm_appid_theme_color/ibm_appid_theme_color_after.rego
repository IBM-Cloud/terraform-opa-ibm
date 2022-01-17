package ibmcloud.resources.after.ibm_appid_theme_color
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_theme_color"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_theme_color").resources[_]
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
header_color = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "header_color", null) |
        res := resources_map[_]
        true
     }
}

