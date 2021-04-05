package ibmcloud.resources.prior.ibm_cm_version
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_version"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cm_version").resources[_]
}
version_loc_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version_loc_id", null) |
        res := resources_map[_]
        true
     }
}

