package ibmcloud.resources.state.ibm_cis_mtls_app
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_mtls_app"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_mtls_app", "managed").resources[_]
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
pol_updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pol_updated_at", null) |
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
app_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_id", null) |
        res := resources_map[_]
        true
     }
}
policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "policy_id", null) |
        res := resources_map[_]
        true
     }
}
app_created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_created_at", null) |
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
app_updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_updated_at", null) |
        res := resources_map[_]
        true
     }
}
pol_created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pol_created_at", null) |
        res := resources_map[_]
        true
     }
}
