package ibmcloud.resources.after.ibm_cloudant
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloudant"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cloudant").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
enable_cors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enable_cors", null) |
        res := resources_map[_]
        true
     }
}
include_data_events = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "include_data_events", null) |
        res := resources_map[_]
        true
     }
}
service_endpoints = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_endpoints", null) |
        res := resources_map[_]
        true
     }
}
plan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plan", null) |
        res := resources_map[_]
        true
     }
}
legacy_credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "legacy_credentials", null) |
        res := resources_map[_]
        true
     }
}
environment_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "environment_crn", null) |
        res := resources_map[_]
        true
     }
}
capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "capacity", null) |
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
cors_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cors_config", null) |
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

