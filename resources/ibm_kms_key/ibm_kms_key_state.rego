package ibmcloud.resources.state.ibm_kms_key
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_kms_key"
}

resources_map[attr]{
    attr := state.get_resources("ibm_kms_key", "managed").resources[_]
}
key_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_id", null) |
        res := resources_map[_]
        true
     }
}
iv_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iv_value", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
standard_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "standard_key", null) |
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
encrypted_nonce = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encrypted_nonce", null) |
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
key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_name", null) |
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
force_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "force_delete", null) |
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
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
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
