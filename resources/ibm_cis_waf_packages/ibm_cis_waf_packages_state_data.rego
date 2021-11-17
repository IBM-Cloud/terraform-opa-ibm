package ibmcloud.resources.state.data.ibm_cis_waf_packages
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_waf_packages"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_waf_packages", "data").resources[_]
}
waf_packages = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "waf_packages", null) |
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
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
