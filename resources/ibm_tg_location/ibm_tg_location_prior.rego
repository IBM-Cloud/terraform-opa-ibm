package ibmcloud.resources.prior.ibm_tg_location
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_tg_location"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_tg_location").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

