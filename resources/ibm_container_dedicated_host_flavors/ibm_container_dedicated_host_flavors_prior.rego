package ibmcloud.resources.prior.ibm_container_dedicated_host_flavors
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host_flavors"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_dedicated_host_flavors").resources[_]
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}

