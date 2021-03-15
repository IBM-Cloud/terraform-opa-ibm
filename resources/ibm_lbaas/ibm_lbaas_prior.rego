package ibmcloud.resources.prior.ibm_lbaas
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_lbaas"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_lbaas").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

