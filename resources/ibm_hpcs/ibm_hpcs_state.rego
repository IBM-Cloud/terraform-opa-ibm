package ibmcloud.resources.state.ibm_hpcs
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hpcs"
}

resources_map[attr]{
    attr := state.get_resources("ibm_hpcs", "managed").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
signature_server_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "signature_server_url", null) |
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
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
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
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
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
deleted_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "deleted_by", null) |
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
hsm_info = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hsm_info", null) |
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
resource_keys_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_keys_url", null) |
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
admins = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "admins", null) |
        res := resources_map[_]
        true
     }
}
failover_units = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "failover_units", null) |
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
scheduled_reclaim_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scheduled_reclaim_at", null) |
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
update_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_at", null) |
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
revocation_threshold = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "revocation_threshold", null) |
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
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
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
signature_threshold = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "signature_threshold", null) |
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
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
units = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "units", null) |
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
