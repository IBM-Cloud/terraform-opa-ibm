package ibmcloud.resources.prior.ibm_app_config_environments
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_environments"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_app_config_environments").resources[_]
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
limit = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "limit", null) |
        res := resources_map[_]
        true
     }
}
offset = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offset", null) |
        res := resources_map[_]
        true
     }
}
expand = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expand", null) |
        res := resources_map[_]
        true
     }
}

