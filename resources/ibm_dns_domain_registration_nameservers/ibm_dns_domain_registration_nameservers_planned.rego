package ibmcloud.resources.planned.ibm_dns_domain_registration_nameservers
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_domain_registration_nameservers"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_domain_registration_nameservers").resources[_]
}
dns_registration_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dns_registration_id", null) |
        res := resources_map[_]
        true
     }
}
name_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name_servers", null) |
        res := resources_map[_]
        true
     }
}

