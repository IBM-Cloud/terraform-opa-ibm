package ibmcloud.resources.computed.ibm_dns_custom_resolver_location
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver_location"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_custom_resolver_location").resources[_]
}
healthy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "healthy", null) |
        res := resources_map[_]
        true
     }
}
dns_server_ip = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_server_ip", null) |
        res := resources_map[_]
        true
     }
}
location_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_id", null) |
        res := resources_map[_]
        true
     }
}

