package ibmcloud.resources.planned.ibm_cis_mtls_app
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_mtls_app"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_mtls_app").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
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
common_rule_val = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "common_rule_val", null) |
        res := resources_map[_]
        true
     }
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}
policy_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_name", null) |
        res := resources_map[_]
        true
     }
}
policy_decision = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_decision", null) |
        res := resources_map[_]
        true
     }
}
cert_rule_val = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cert_rule_val", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
session_duration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_duration", null) |
        res := resources_map[_]
        true
     }
}

