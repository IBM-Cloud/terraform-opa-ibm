package ibmcloud.resources.state.data.ibm_pi_instances
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_instances"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_instances", "data").resources[_]
}
pvm_instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pvm_instances", null) |
        res := resources_map[_]
        true
     }
}
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
