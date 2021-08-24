package ibmcloud.resources.state.data.ibm_atracker_targets
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_targets"
}

resources_map[attr]{
    attr := state.get_resources("ibm_atracker_targets", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
targets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "targets", null) |
        res := resources_map[_]
        true
     }
}
