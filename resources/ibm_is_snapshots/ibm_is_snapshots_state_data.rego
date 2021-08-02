package ibmcloud.resources.state.data.ibm_is_snapshots
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_snapshots"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_snapshots", "data").resources[_]
}
snapshots = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "snapshots", null) |
        res := resources_map[_]
        true
     }
}
