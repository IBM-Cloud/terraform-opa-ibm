package ibmcloud.resources.computed.ibm_kms_key_policies
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_kms_key_policies"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_kms_key_policies").resources[_]
}
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
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
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
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

