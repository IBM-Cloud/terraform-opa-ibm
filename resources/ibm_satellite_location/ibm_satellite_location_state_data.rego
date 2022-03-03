package ibmcloud.resources.state.data.ibm_satellite_location
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location"
}

resources_map[attr]{
    attr := state.get_resources("ibm_satellite_location", "data").resources[_]
}
managed_from = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managed_from", null) |
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
host_available_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_available_count", null) |
        res := resources_map[_]
        true
     }
}
ingress_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_hostname", null) |
        res := resources_map[_]
        true
     }
}
hosts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hosts", null) |
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
ingress_secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ingress_secret", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
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
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
host_attached_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_attached_count", null) |
        res := resources_map[_]
        true
     }
}
