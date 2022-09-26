package ibmcloud.resources.prior.ibm_app_config_segment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_segment"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_app_config_segment").resources[_]
}
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}
includes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "includes", null) |
        res := resources_map[_]
        true
     }
}
segment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "segment_id", null) |
        res := resources_map[_]
        true
     }
}

