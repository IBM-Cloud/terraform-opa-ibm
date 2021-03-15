package ibmcloud.resources.computed.ibm_cis_cache_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_cache_settings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_cache_settings").resources[_]
}
query_string_sort = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "query_string_sort", null) |
        res := resources_map[_]
        true
     }
}
caching_level = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "caching_level", null) |
        res := resources_map[_]
        true
     }
}
development_mode = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "development_mode", null) |
        res := resources_map[_]
        true
     }
}
browser_expiration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "browser_expiration", null) |
        res := resources_map[_]
        true
     }
}

