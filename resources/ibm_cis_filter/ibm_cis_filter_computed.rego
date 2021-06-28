package ibmcloud.resources.computed.ibm_cis_filter
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_filter"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_filter").resources[_]
}
filter_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "filter_id", null) |
        res := resources_map[_]
        true
     }
}

