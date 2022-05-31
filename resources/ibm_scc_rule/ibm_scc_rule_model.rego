package ibmcloud.resources.model.ibm_scc_rule
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_scc_rule").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_scc_rule", "managed").resources[_]
}
modification_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modification_date", null) |
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
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
labels = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "labels", null) |
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
enforcement_actions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enforcement_actions", null) |
        res := resources_map[_]
        true
     }
}
required_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "required_config", null) |
        res := resources_map[_]
        true
     }
}
target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target", null) |
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
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}

