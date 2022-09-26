package ibmcloud.resources.after.ibm_kms_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_kms_key").resources[_]
}
payload = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "payload", null) |
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
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
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
iv_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iv_value", null) |
        res := resources_map[_]
        true
     }
}
key_ring_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_ring_id", null) |
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
endpoint_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_type", null) |
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
standard_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "standard_key", null) |
        res := resources_map[_]
        true
     }
}

