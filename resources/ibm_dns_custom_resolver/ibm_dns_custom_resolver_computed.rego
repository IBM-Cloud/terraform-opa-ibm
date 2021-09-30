package ibmcloud.resources.computed.ibm_dns_custom_resolver
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_custom_resolver").resources[_]
}
custom_resolver_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "custom_resolver_id", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
health = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}

