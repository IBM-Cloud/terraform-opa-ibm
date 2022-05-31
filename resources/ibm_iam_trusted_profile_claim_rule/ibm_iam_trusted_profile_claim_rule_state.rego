package ibmcloud.resources.state.ibm_iam_trusted_profile_claim_rule
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_claim_rule"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_trusted_profile_claim_rule", "managed").resources[_]
}
conditions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "conditions", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
cr_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cr_type", null) |
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
entity_tag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entity_tag", null) |
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
rule_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_id", null) |
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
