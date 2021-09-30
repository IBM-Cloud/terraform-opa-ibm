package ibmcloud.resources.planned.ibm_appid_languages
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_languages"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_languages").resources[_]
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
languages = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "languages", null) |
        res := resources_map[_]
        true
     }
}

