package ibmcloud.resources.state.data.ibm_scc_posture_scope
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scope"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_scope", "data").resources[_]
}
status_updated_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_updated_time", null) |
        res := resources_map[_]
        true
     }
}
resource_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_groups", null) |
        res := resources_map[_]
        true
     }
}
region_names = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region_names", null) |
        res := resources_map[_]
        true
     }
}
file_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file_type", null) |
        res := resources_map[_]
        true
     }
}
interval = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "interval", null) |
        res := resources_map[_]
        true
     }
}
partner_uuid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "partner_uuid", null) |
        res := resources_map[_]
        true
     }
}
cloud_type_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cloud_type_id", null) |
        res := resources_map[_]
        true
     }
}
credentials_by_sub_categeory_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials_by_sub_categeory_type", null) |
        res := resources_map[_]
        true
     }
}
env_sub_category = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "env_sub_category", null) |
        res := resources_map[_]
        true
     }
}
tld_credentail = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tld_credentail", null) |
        res := resources_map[_]
        true
     }
}
discovery_method = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "discovery_method", null) |
        res := resources_map[_]
        true
     }
}
modified_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_at", null) |
        res := resources_map[_]
        true
     }
}
correlation_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "correlation_id", null) |
        res := resources_map[_]
        true
     }
}
last_successful_discover_completed_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_successful_discover_completed_time", null) |
        res := resources_map[_]
        true
     }
}
task_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "task_type", null) |
        res := resources_map[_]
        true
     }
}
first_level_scoped_data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "first_level_scoped_data", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
tasks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tasks", null) |
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
tld_credential_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tld_credential_id", null) |
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
org_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "org_id", null) |
        res := resources_map[_]
        true
     }
}
subset_selected = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subset_selected", null) |
        res := resources_map[_]
        true
     }
}
credentials_by_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials_by_type", null) |
        res := resources_map[_]
        true
     }
}
cloud_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cloud_type", null) |
        res := resources_map[_]
        true
     }
}
modified_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_by", null) |
        res := resources_map[_]
        true
     }
}
credential_attributes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credential_attributes", null) |
        res := resources_map[_]
        true
     }
}
scope_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scope_id", null) |
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
file_format = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file_format", null) |
        res := resources_map[_]
        true
     }
}
discovery_setting_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "discovery_setting_id", null) |
        res := resources_map[_]
        true
     }
}
collectors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "collectors", null) |
        res := resources_map[_]
        true
     }
}
discovery_methods = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "discovery_methods", null) |
        res := resources_map[_]
        true
     }
}
last_successful_discover_start_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_successful_discover_start_time", null) |
        res := resources_map[_]
        true
     }
}
collectors_by_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "collectors_by_type", null) |
        res := resources_map[_]
        true
     }
}
status_msg = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_msg", null) |
        res := resources_map[_]
        true
     }
}
last_discover_completed_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_discover_completed_time", null) |
        res := resources_map[_]
        true
     }
}
last_discover_start_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_discover_start_time", null) |
        res := resources_map[_]
        true
     }
}
sub_categories_by_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sub_categories_by_type", null) |
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
is_discovery_scheduled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_discovery_scheduled", null) |
        res := resources_map[_]
        true
     }
}
include_new_eagerly = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "include_new_eagerly", null) |
        res := resources_map[_]
        true
     }
}
uuid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uuid", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
