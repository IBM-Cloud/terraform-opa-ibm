package ibmcloud.resources.planned.ibm_app_config_environment
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_app_config_environment"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_app_config_environment").resources[_]
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
color_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "color_code", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}

