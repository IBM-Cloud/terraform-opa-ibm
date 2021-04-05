package ibmcloud.resources.state.data.ibm_cis_custom_pages
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_custom_pages"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_custom_pages", "data").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
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
cis_custom_pages = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_custom_pages", null) |
        res := resources_map[_]
        true
     }
}
