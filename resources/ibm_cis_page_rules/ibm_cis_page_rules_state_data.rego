package ibmcloud.resources.state.data.ibm_cis_page_rules
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_page_rules"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_page_rules", "data").resources[_]
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
cis_page_rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_page_rules", null) |
        res := resources_map[_]
        true
     }
}
