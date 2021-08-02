package ibmcloud.resources.planned.ibm_dns_custom_resolver_location
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver_location"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_custom_resolver_location").resources[_]
}
subnet_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subnet_crn", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
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

