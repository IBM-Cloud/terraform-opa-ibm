package ibmcloud.resources.planned.ibm_kp_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kp_key"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_kp_key").resources[_]
}
key_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_name", null) |
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
encrypted_nonce = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encrypted_nonce", null) |
        res := resources_map[_]
        true
     }
}
key_protect_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_protect_id", null) |
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
standard_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "standard_key", null) |
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

