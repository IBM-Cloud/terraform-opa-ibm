package ibmcloud.resources.computed.ibm_enterprise_account
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_enterprise_account"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_enterprise_account").resources[_]
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
is_enterprise_account = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_enterprise_account", null) |
        res := resources_map[_]
        true
     }
}
url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url", null) |
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
owner_email = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "owner_email", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
        res := resources_map[_]
        true
     }
}
paid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "paid", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
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
enterprise_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enterprise_id", null) |
        res := resources_map[_]
        true
     }
}
enterprise_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enterprise_path", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
        res := resources_map[_]
        true
     }
}

