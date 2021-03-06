package ibmcloud.resources.prior.ibm_cm_catalog
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_catalog"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cm_catalog").resources[_]
}
catalog_identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_identifier", null) |
        res := resources_map[_]
        true
     }
}

