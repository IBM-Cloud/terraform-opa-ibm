package ibmcloud.resources.prior.ibm_dns_zones
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_dns_zones"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_dns_zones").resources[_]
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}

