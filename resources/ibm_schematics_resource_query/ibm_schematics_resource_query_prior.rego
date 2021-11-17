package ibmcloud.resources.prior.ibm_schematics_resource_query
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_resource_query"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_schematics_resource_query").resources[_]
}
query_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "query_id", null) |
        res := resources_map[_]
        true
     }
}

