package ibmcloud.resources.model.ibm_dns_custom_resolver_forwarding_rule
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver_forwarding_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_custom_resolver_forwarding_rule").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_dns_custom_resolver_forwarding_rule", "managed").resources[_]
}
forward_to = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "forward_to", null) |
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
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
resolver_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resolver_id", null) |
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
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
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

