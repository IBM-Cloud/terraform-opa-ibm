package ibmcloud.resources.computed.ibm_iam_trusted_profile
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_trusted_profile").resources[_]
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
ims_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ims_account_id", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
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
entity_tag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entity_tag", null) |
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
modified_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_at", null) |
        res := resources_map[_]
        true
     }
}
iam_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_id", null) |
        res := resources_map[_]
        true
     }
}
ims_user_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ims_user_id", null) |
        res := resources_map[_]
        true
     }
}
history = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "history", null) |
        res := resources_map[_]
        true
     }
}

