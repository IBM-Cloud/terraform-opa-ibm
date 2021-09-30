package ibmcloud.resources.state.data.ibm_dns_custom_resolver_forwarding_rules
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver_forwarding_rules"
}

resources_map[attr]{
    attr := state.get_resources("ibm_dns_custom_resolver_forwarding_rules", "data").resources[_]
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
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}
