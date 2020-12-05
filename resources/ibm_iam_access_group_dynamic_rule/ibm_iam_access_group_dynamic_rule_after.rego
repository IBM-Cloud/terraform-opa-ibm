package ibmcloud.resources.after.ibm_iam_access_group_dynamic_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_dynamic_rule"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_access_group_dynamic_rule").resources[_]
}
access_group_id = ret {
    ret := {res.address: object.get(res.attributes, "access_group_id", null) |
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
expiration = ret {
    ret := {res.address: object.get(res.attributes, "expiration", null) |
        res := resources_map[_]
        true
     }
}
identity_provider = ret {
    ret := {res.address: object.get(res.attributes, "identity_provider", null) |
        res := resources_map[_]
        true
     }
}
conditions = ret {
    ret := {res.address: object.get(res.attributes, "conditions", null) |
        res := resources_map[_]
        true
     }
}

