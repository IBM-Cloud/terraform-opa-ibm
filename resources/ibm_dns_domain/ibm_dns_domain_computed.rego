package ibmcloud.resources.computed.ibm_dns_domain
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_domain"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_dns_domain").resources[_]
}
serial = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "serial", null) |
        res := resources_map[_]
        true
     }
}
update_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "update_date", null) |
        res := resources_map[_]
        true
     }
}

