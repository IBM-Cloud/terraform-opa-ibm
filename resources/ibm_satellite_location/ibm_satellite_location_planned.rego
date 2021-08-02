package ibmcloud.resources.planned.ibm_satellite_location
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_satellite_location").resources[_]
}
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
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
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
managed_from = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managed_from", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
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
logging_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "logging_account_id", null) |
        res := resources_map[_]
        true
     }
}
cos_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cos_config", null) |
        res := resources_map[_]
        true
     }
}
cos_credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cos_credentials", null) |
        res := resources_map[_]
        true
     }
}

