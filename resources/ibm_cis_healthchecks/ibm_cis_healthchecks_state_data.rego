package ibmcloud.resources.state.data.ibm_cis_healthchecks
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_healthchecks"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_healthchecks", "data").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
cis_healthchecks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_healthchecks", null) |
        res := resources_map[_]
        true
     }
}
