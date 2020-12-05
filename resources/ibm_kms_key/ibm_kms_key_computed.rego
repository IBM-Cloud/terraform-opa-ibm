package ibmcloud.resources.computed.ibm_kms_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_kms_key").resources[_]
}
resource_name = ret {
    ret := {res.address: object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {res.address: object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {res.address: object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {res.address: object.get(res.attributes, "resource_crn", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {res.address: object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
key_id = ret {
    ret := {res.address: object.get(res.attributes, "key_id", null) |
        res := resources_map[_]
        true
     }
}
policies = ret {
    ret := {res.address: object.get(res.attributes, "policies", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}
payload = ret {
    ret := {res.address: object.get(res.attributes, "payload", null) |
        res := resources_map[_]
        true
     }
}

