package ibmcloud.resources.state.data.ibm_pi_cloud_instance
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_cloud_instance"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_cloud_instance", "data").resources[_]
}
total_instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_instances", null) |
        res := resources_map[_]
        true
     }
}
total_standard_storage_consumed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_standard_storage_consumed", null) |
        res := resources_map[_]
        true
     }
}
pvm_instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pvm_instances", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
total_processors_consumed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_processors_consumed", null) |
        res := resources_map[_]
        true
     }
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
        res := resources_map[_]
        true
     }
}
capabilities = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "capabilities", null) |
        res := resources_map[_]
        true
     }
}
total_memory_consumed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_memory_consumed", null) |
        res := resources_map[_]
        true
     }
}
total_ssd_storage_consumed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_ssd_storage_consumed", null) |
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
creation_date = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "creation_date", null) |
        res := resources_map[_]
        true
     }
}
