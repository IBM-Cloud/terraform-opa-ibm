package ibmcloud.resources.state.data.ibm_cis_range_apps
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_range_apps"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_range_apps", "data").resources[_]
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
range_apps = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "range_apps", null) |
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
