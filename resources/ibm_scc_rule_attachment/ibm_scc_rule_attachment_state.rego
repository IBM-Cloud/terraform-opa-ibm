package ibmcloud.resources.state.ibm_scc_rule_attachment
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_rule_attachment"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_rule_attachment", "managed").resources[_]
}
rule_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_id", null) |
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
included_scope = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "included_scope", null) |
        res := resources_map[_]
        true
     }
}
excluded_scopes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "excluded_scopes", null) |
        res := resources_map[_]
        true
     }
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
attachment_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "attachment_id", null) |
        res := resources_map[_]
        true
     }
}
