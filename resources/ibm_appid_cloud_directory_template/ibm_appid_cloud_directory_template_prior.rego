package ibmcloud.resources.prior.ibm_appid_cloud_directory_template
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_cloud_directory_template"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_appid_cloud_directory_template").resources[_]
}
language = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "language", null) |
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

