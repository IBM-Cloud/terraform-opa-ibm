package ibmcloud.resources.computed.ibm_dns_domain_registration_nameservers
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_domain_registration_nameservers"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_domain_registration_nameservers").resources[_]
}
original_name_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "original_name_servers", null) |
        res := resources_map[_]
        true
     }
}

