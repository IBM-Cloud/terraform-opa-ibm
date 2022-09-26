package ibmcloud.resources.state.data.ibm_scc_posture_collector
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_collector"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_collector", "data").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
status_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status_description", null) |
        res := resources_map[_]
        true
     }
}
is_ubi_image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_ubi_image", null) |
        res := resources_map[_]
        true
     }
}
image_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_version", null) |
        res := resources_map[_]
        true
     }
}
trial_expiry = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "trial_expiry", null) |
        res := resources_map[_]
        true
     }
}
is_public = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_public", null) |
        res := resources_map[_]
        true
     }
}
use_private_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "use_private_endpoint", null) |
        res := resources_map[_]
        true
     }
}
install_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "install_path", null) |
        res := resources_map[_]
        true
     }
}
public_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_key", null) |
        res := resources_map[_]
        true
     }
}
last_heartbeat = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_heartbeat", null) |
        res := resources_map[_]
        true
     }
}
approved_internet_gateway_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "approved_internet_gateway_ip", null) |
        res := resources_map[_]
        true
     }
}
reset_reason = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reset_reason", null) |
        res := resources_map[_]
        true
     }
}
collector_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "collector_id", null) |
        res := resources_map[_]
        true
     }
}
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
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
failure_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "failure_count", null) |
        res := resources_map[_]
        true
     }
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
managed_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managed_by", null) |
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
approved_local_gateway_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "approved_local_gateway_ip", null) |
        res := resources_map[_]
        true
     }
}
last_failed_local_gateway_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_failed_local_gateway_ip", null) |
        res := resources_map[_]
        true
     }
}
credential_public_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credential_public_key", null) |
        res := resources_map[_]
        true
     }
}
registration_code = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "registration_code", null) |
        res := resources_map[_]
        true
     }
}
reset_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reset_time", null) |
        res := resources_map[_]
        true
     }
}
collector_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "collector_version", null) |
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
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
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
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
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
last_failed_internet_gateway_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_failed_internet_gateway_ip", null) |
        res := resources_map[_]
        true
     }
}
display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_name", null) |
        res := resources_map[_]
        true
     }
}
