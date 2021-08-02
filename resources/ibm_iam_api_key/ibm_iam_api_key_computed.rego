package ibmcloud.resources.computed.ibm_iam_api_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_api_key"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_api_key").resources[_]
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
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
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
locked = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked", null) |
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
apikey = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "apikey", null) |
        res := resources_map[_]
        true
     }
}
apikey_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "apikey_id", null) |
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

