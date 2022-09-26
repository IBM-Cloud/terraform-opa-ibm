package ibmcloud.resources.computed.ibm_app_config_segment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_segment"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_app_config_segment").resources[_]
}
created_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_time", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
updated_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_time", null) |
        res := resources_map[_]
        true
     }
}

