package ibmcloud.resources.model.ibm_dns_domain_registration_nameservers
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_domain_registration_nameservers"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_domain_registration_nameservers").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_dns_domain_registration_nameservers", "managed").resources[_]
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
original_name_servers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "original_name_servers", null) |
        res := resources_map[_]
        true
     }
}

