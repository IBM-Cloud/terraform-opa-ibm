package ibmcloud.resources.prior.ibm_container_nlb_dns
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_nlb_dns"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_nlb_dns").resources[_]
}
cluster = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}

