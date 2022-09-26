package ibmcloud.resources.model.ibm_cloudant
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cloudant"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cloudant").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cloudant", "managed").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
resource_plan_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_plan_id", null) |
        res := resources_map[_]
        true
     }
}
resource_bindings_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_bindings_url", null) |
        res := resources_map[_]
        true
     }
}
resource_keys_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_keys_url", null) |
        res := resources_map[_]
        true
     }
}
deleted_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deleted_at", null) |
        res := resources_map[_]
        true
     }
}
deleted_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deleted_by", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
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
throughput = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "throughput", null) |
        res := resources_map[_]
        true
     }
}
target_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_crn", null) |
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
parameters_json = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters_json", null) |
        res := resources_map[_]
        true
     }
}
resource_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_id", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
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
sub_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sub_type", null) |
        res := resources_map[_]
        true
     }
}
update_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_by", null) |
        res := resources_map[_]
        true
     }
}
restored_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "restored_at", null) |
        res := resources_map[_]
        true
     }
}
restored_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "restored_by", null) |
        res := resources_map[_]
        true
     }
}
extensions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "extensions", null) |
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
parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters", null) |
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
plan_history = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plan_history", null) |
        res := resources_map[_]
        true
     }
}
resource_group_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_crn", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
        res := resources_map[_]
        true
     }
}
scheduled_reclaim_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scheduled_reclaim_at", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
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
allow_cleanup = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allow_cleanup", null) |
        res := resources_map[_]
        true
     }
}
locked = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked", null) |
        res := resources_map[_]
        true
     }
}
resource_aliases_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_aliases_url", null) |
        res := resources_map[_]
        true
     }
}
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
dashboard_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dashboard_url", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
last_operation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_operation", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
scheduled_reclaim_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scheduled_reclaim_by", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
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
update_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_at", null) |
        res := resources_map[_]
        true
     }
}

