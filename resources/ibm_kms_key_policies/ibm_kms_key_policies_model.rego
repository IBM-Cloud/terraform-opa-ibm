package ibmcloud.resources.model.ibm_kms_key_policies
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key_policies"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_kms_key_policies").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_kms_key_policies", "managed").resources[_]
}
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
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
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
key_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "key_id", null) |
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
rotation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rotation", null) |
        res := resources_map[_]
        true
     }
}
dual_auth_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dual_auth_delete", null) |
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

