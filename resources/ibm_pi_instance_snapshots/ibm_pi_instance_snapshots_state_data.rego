package ibmcloud.resources.state.data.ibm_pi_instance_snapshots
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_instance_snapshots"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_instance_snapshots", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
instance_snapshots = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_snapshots", null) |
        res := resources_map[_]
        true
     }
}
