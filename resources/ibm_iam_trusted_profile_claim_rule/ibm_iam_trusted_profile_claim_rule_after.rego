package ibmcloud.resources.after.ibm_iam_trusted_profile_claim_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_claim_rule"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_trusted_profile_claim_rule").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
cr_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cr_type", null) |
        res := resources_map[_]
        true
     }
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
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
realm_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "realm_name", null) |
        res := resources_map[_]
        true
     }
}
expiration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expiration", null) |
        res := resources_map[_]
        true
     }
}
conditions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "conditions", null) |
        res := resources_map[_]
        true
     }
}

