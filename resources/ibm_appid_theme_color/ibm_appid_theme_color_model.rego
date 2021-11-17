package ibmcloud.resources.model.ibm_appid_theme_color
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_theme_color"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_theme_color").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_appid_theme_color", "managed").resources[_]
}
header_color = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "header_color", null) |
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

