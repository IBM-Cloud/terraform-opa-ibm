package ibmcloud.resources.state.data.ibm_cis_global_load_balancers
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_global_load_balancers"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_global_load_balancers", "data").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
cis_glb = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_glb", null) |
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
