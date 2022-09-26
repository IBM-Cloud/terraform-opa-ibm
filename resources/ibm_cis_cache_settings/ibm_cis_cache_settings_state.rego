package ibmcloud.resources.state.ibm_cis_cache_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_cache_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_cache_settings", "managed").resources[_]
}
browser_expiration = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "browser_expiration", null) |
        res := resources_map[_]
        true
     }
}
purge_by_urls = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "purge_by_urls", null) |
        res := resources_map[_]
        true
     }
}
purge_by_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "purge_by_tags", null) |
        res := resources_map[_]
        true
     }
}
purge_by_hosts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "purge_by_hosts", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
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
serve_stale_content = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "serve_stale_content", null) |
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
query_string_sort = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "query_string_sort", null) |
        res := resources_map[_]
        true
     }
}
purge_all = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "purge_all", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
