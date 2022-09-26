package ibmcloud.resources.state.data.ibm_pi_storage_pool_capacity
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_storage_pool_capacity"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_storage_pool_capacity", "data").resources[_]
}
pi_storage_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_storage_pool", null) |
        res := resources_map[_]
        true
     }
}
max_allocation_size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_allocation_size", null) |
        res := resources_map[_]
        true
     }
}
storage_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "storage_type", null) |
        res := resources_map[_]
        true
     }
}
total_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_capacity", null) |
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
