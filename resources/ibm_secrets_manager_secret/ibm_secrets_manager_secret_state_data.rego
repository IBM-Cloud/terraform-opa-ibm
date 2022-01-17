package ibmcloud.resources.state.data.ibm_secrets_manager_secret
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_secrets_manager_secret"
}

resources_map[attr]{
    attr := state.get_resources("ibm_secrets_manager_secret", "data").resources[_]
}
secret_data = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_data", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
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
service_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_id", null) |
        res := resources_map[_]
        true
     }
}
reuse_api_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reuse_api_key", null) |
        res := resources_map[_]
        true
     }
}
password = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password", null) |
        res := resources_map[_]
        true
     }
}
access_groups = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_groups", null) |
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
expiration_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expiration_date", null) |
        res := resources_map[_]
        true
     }
}
next_rotation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "next_rotation_date", null) |
        res := resources_map[_]
        true
     }
}
secret_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_id", null) |
        res := resources_map[_]
        true
     }
}
metadata = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metadata", null) |
        res := resources_map[_]
        true
     }
}
ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ttl", null) |
        res := resources_map[_]
        true
     }
}
secret_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_type", null) |
        res := resources_map[_]
        true
     }
}
state_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state_description", null) |
        res := resources_map[_]
        true
     }
}
versions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "versions", null) |
        res := resources_map[_]
        true
     }
}
username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
api_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_key", null) |
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
last_update_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_update_date", null) |
        res := resources_map[_]
        true
     }
}
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
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
payload = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "payload", null) |
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
secret_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_group_id", null) |
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
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
        res := resources_map[_]
        true
     }
}
creation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "creation_date", null) |
        res := resources_map[_]
        true
     }
}
