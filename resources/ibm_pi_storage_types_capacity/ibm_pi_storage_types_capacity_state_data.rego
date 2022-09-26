package ibmcloud.resources.state.data.ibm_pi_storage_types_capacity
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_storage_types_capacity"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_storage_types_capacity", "data").resources[_]
}
storage_types_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "storage_types_capacity", null) |
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
maximum_storage_allocation = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "maximum_storage_allocation", null) |
        res := resources_map[_]
        true
     }
}
