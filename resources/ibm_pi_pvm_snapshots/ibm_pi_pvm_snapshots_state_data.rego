package ibmcloud.resources.state.data.ibm_pi_pvm_snapshots
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_pi_pvm_snapshots"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_pvm_snapshots", "data").resources[_]
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
pvm_snapshots = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pvm_snapshots", null) |
        res := resources_map[_]
        true
     }
}
