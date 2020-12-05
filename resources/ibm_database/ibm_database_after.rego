package ibmcloud.resources.after.ibm_database
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_database").resources[_]
}
point_in_time_recovery_time = ret {
    ret := {res.address: object.get(res.attributes, "point_in_time_recovery_time", null) |
        res := resources_map[_]
        true
     }
}
users = ret {
    ret := {res.address: object.get(res.attributes, "users", null) |
        res := resources_map[_]
        true
     }
}
version = ret {
    ret := {res.address: object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
members_cpu_allocation_count = ret {
    ret := {res.address: object.get(res.attributes, "members_cpu_allocation_count", null) |
        res := resources_map[_]
        true
     }
}
backup_encryption_key_crn = ret {
    ret := {res.address: object.get(res.attributes, "backup_encryption_key_crn", null) |
        res := resources_map[_]
        true
     }
}
adminpassword = ret {
    ret := {res.address: object.get(res.attributes, "adminpassword", null) |
        res := resources_map[_]
        true
     }
}
backup_id = ret {
    ret := {res.address: object.get(res.attributes, "backup_id", null) |
        res := resources_map[_]
        true
     }
}
key_protect_key = ret {
    ret := {res.address: object.get(res.attributes, "key_protect_key", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {res.address: object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
key_protect_instance = ret {
    ret := {res.address: object.get(res.attributes, "key_protect_instance", null) |
        res := resources_map[_]
        true
     }
}
plan = ret {
    ret := {res.address: object.get(res.attributes, "plan", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
members_disk_allocation_mb = ret {
    ret := {res.address: object.get(res.attributes, "members_disk_allocation_mb", null) |
        res := resources_map[_]
        true
     }
}
whitelist = ret {
    ret := {res.address: object.get(res.attributes, "whitelist", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {res.address: object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
members_memory_allocation_mb = ret {
    ret := {res.address: object.get(res.attributes, "members_memory_allocation_mb", null) |
        res := resources_map[_]
        true
     }
}
service_endpoints = ret {
    ret := {res.address: object.get(res.attributes, "service_endpoints", null) |
        res := resources_map[_]
        true
     }
}
auto_scaling = ret {
    ret := {res.address: object.get(res.attributes, "auto_scaling", null) |
        res := resources_map[_]
        true
     }
}
point_in_time_recovery_deployment_id = ret {
    ret := {res.address: object.get(res.attributes, "point_in_time_recovery_deployment_id", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
remote_leader_id = ret {
    ret := {res.address: object.get(res.attributes, "remote_leader_id", null) |
        res := resources_map[_]
        true
     }
}

