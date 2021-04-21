package ibmcloud.resources.computed.ibm_compute_dedicated_host
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_dedicated_host"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_dedicated_host").resources[_]
}
disk_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_capacity", null) |
        res := resources_map[_]
        true
     }
}
cpu_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cpu_count", null) |
        res := resources_map[_]
        true
     }
}
memory_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory_capacity", null) |
        res := resources_map[_]
        true
     }
}

