package ibmcloud.resources.state.ibm_iam_access_group_dynamic_rule
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_dynamic_rule"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_access_group_dynamic_rule", "managed").resources[_]
}
identity_provider = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "identity_provider", null) |
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
rule_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_id", null) |
        res := resources_map[_]
        true
     }
}
access_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_group_id", null) |
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
expiration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "expiration", null) |
        res := resources_map[_]
        true
     }
}
