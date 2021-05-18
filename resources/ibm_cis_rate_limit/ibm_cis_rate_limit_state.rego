package ibmcloud.resources.state.ibm_cis_rate_limit
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_rate_limit"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_rate_limit", "managed").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
bypass = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bypass", null) |
        res := resources_map[_]
        true
     }
}
period = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "period", null) |
        res := resources_map[_]
        true
     }
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
disabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disabled", null) |
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
threshold = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "threshold", null) |
        res := resources_map[_]
        true
     }
}
correlate = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "correlate", null) |
        res := resources_map[_]
        true
     }
}
match = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "match", null) |
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
