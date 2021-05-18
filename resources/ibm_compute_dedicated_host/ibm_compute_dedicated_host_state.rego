package ibmcloud.resources.state.ibm_compute_dedicated_host
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_dedicated_host"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_dedicated_host", "managed").resources[_]
}
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
flavor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor", null) |
        res := resources_map[_]
        true
     }
}
disk_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "disk_capacity", null) |
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
wait_time_minutes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "wait_time_minutes", null) |
        res := resources_map[_]
        true
     }
}
domain = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain", null) |
        res := resources_map[_]
        true
     }
}
hourly_billing = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hourly_billing", null) |
        res := resources_map[_]
        true
     }
}
router_hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "router_hostname", null) |
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
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
hostname = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hostname", null) |
        res := resources_map[_]
        true
     }
}
