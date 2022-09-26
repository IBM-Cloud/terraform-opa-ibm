package ibmcloud.resources.computed.ibm_tg_connection_prefix_filter
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_connection_prefix_filter"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_tg_connection_prefix_filter").resources[_]
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
filter_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "filter_id", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}

