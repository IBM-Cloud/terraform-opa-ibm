package ibmcloud.resources.state.ibm_database
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database"
}

resources_map[attr]{
    attr := state.get_resources("ibm_database", "managed").resources[_]
}
plan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plan", null) |
        res := resources_map[_]
        true
     }
}
node_disk_allocation_mb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "node_disk_allocation_mb", null) |
        res := resources_map[_]
        true
     }
}
remote_leader_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "remote_leader_id", null) |
        res := resources_map[_]
        true
     }
}
key_protect_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_protect_key", null) |
        res := resources_map[_]
        true
     }
}
backup_encryption_key_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_encryption_key_crn", null) |
        res := resources_map[_]
        true
     }
}
auto_scaling = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "auto_scaling", null) |
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
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
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
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
members_disk_allocation_mb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members_disk_allocation_mb", null) |
        res := resources_map[_]
        true
     }
}
node_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "node_count", null) |
        res := resources_map[_]
        true
     }
}
node_memory_allocation_mb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "node_memory_allocation_mb", null) |
        res := resources_map[_]
        true
     }
}
key_protect_instance = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_protect_instance", null) |
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
point_in_time_recovery_deployment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "point_in_time_recovery_deployment_id", null) |
        res := resources_map[_]
        true
     }
}
adminpassword = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "adminpassword", null) |
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
users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "users", null) |
        res := resources_map[_]
        true
     }
}
whitelist = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "whitelist", null) |
        res := resources_map[_]
        true
     }
}
members_memory_allocation_mb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members_memory_allocation_mb", null) |
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
guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}
node_cpu_allocation_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "node_cpu_allocation_count", null) |
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
connectionstrings = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connectionstrings", null) |
        res := resources_map[_]
        true
     }
}
groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "groups", null) |
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
backup_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "backup_id", null) |
        res := resources_map[_]
        true
     }
}
adminuser = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "adminuser", null) |
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
point_in_time_recovery_time = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "point_in_time_recovery_time", null) |
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
plan_validation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plan_validation", null) |
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
members_cpu_allocation_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members_cpu_allocation_count", null) |
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
