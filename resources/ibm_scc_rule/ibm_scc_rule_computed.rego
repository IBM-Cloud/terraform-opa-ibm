package ibmcloud.resources.computed.ibm_scc_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_rule"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_scc_rule").resources[_]
}
modification_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modification_date", null) |
        res := resources_map[_]
        true
     }
}
creation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "creation_date", null) |
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
modified_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_by", null) |
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
rule_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule_type", null) |
        res := resources_map[_]
        true
     }
}

