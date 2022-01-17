package ibmcloud.resources.prior.ibm_cbr_zone
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cbr_zone"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cbr_zone").resources[_]
}
zone_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}

