package ibmcloud.resources.prior.ibm_app_config_feature
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_feature"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_app_config_feature").resources[_]
}
includes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "includes", null) |
        res := resources_map[_]
        true
     }
}
environment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "environment_id", null) |
        res := resources_map[_]
        true
     }
}
feature_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "feature_id", null) |
        res := resources_map[_]
        true
     }
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}

