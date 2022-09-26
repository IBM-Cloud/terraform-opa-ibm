package ibmcloud.resources.prior.ibm_en_destinations
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_destinations"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_en_destinations").resources[_]
}
search_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "search_key", null) |
        res := resources_map[_]
        true
     }
}
instance_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_guid", null) |
        res := resources_map[_]
        true
     }
}

