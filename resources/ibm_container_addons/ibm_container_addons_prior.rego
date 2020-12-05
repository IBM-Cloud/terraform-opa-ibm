package ibmcloud.resources.prior.ibm_container_addons
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_addons"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_addons").resources[_]
}
cluster = ret {
    ret := {res.address: object.get(res.attributes, "cluster", null) |
        res := resources_map[_]
        true
     }
}

