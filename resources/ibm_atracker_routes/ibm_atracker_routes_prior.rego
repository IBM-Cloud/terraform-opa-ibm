package ibmcloud.resources.prior.ibm_atracker_routes
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_routes"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_atracker_routes").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

