package ibmcloud.resources.prior.ibm_cm_offering
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_offering"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cm_offering").resources[_]
}
offering_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_id", null) |
        res := resources_map[_]
        true
     }
}
catalog_identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_identifier", null) |
        res := resources_map[_]
        true
     }
}

