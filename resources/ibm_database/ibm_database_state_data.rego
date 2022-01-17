package ibmcloud.resources.state.data.ibm_database
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_database"
}

resources_map[attr]{
    attr := state.get_resources("ibm_database", "data").resources[_]
}
whitelist = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "whitelist", null) |
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
adminuser = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "adminuser", null) |
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
members_disk_allocation_mb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members_disk_allocation_mb", null) |
        res := resources_map[_]
        true
     }
}
platform_options = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "platform_options", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
cert_file_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cert_file_path", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
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
users = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "users", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
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
configuration_schema = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "configuration_schema", null) |
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
