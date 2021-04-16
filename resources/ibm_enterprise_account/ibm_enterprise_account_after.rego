package ibmcloud.resources.after.ibm_enterprise_account
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprise_account"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_enterprise_account").resources[_]
}
enterprise_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enterprise_id", null) |
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
owner_iam_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "owner_iam_id", null) |
        res := resources_map[_]
        true
     }
}
enterprise_account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enterprise_account_id", null) |
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
parent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parent", null) |
        res := resources_map[_]
        true
     }
}

