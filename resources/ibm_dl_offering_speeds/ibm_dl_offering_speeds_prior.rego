package ibmcloud.resources.prior.ibm_dl_offering_speeds
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dl_offering_speeds"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_dl_offering_speeds").resources[_]
}
offering_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_type", null) |
        res := resources_map[_]
        true
     }
}

