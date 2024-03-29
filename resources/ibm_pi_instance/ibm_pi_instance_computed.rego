package ibmcloud.resources.computed.ibm_pi_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_instance"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_instance").resources[_]
}
pi_sys_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_sys_type", null) |
        res := resources_map[_]
        true
     }
}
min_virtual_cores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "min_virtual_cores", null) |
        res := resources_map[_]
        true
     }
}
min_memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "min_memory", null) |
        res := resources_map[_]
        true
     }
}
pi_processors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_processors", null) |
        res := resources_map[_]
        true
     }
}
operating_system = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "operating_system", null) |
        res := resources_map[_]
        true
     }
}
pi_migratable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_migratable", null) |
        res := resources_map[_]
        true
     }
}
pi_storage_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_storage_pool", null) |
        res := resources_map[_]
        true
     }
}
pi_proc_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_proc_type", null) |
        res := resources_map[_]
        true
     }
}
max_virtual_cores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_virtual_cores", null) |
        res := resources_map[_]
        true
     }
}
max_processors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_processors", null) |
        res := resources_map[_]
        true
     }
}
pi_storage_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_storage_type", null) |
        res := resources_map[_]
        true
     }
}
health_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health_status", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
pi_progress = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_progress", null) |
        res := resources_map[_]
        true
     }
}
pi_virtual_cores_assigned = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_virtual_cores_assigned", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
min_processors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "min_processors", null) |
        res := resources_map[_]
        true
     }
}
os_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os_type", null) |
        res := resources_map[_]
        true
     }
}
pin_policy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pin_policy", null) |
        res := resources_map[_]
        true
     }
}
pi_license_repository_capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_license_repository_capacity", null) |
        res := resources_map[_]
        true
     }
}
max_memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_memory", null) |
        res := resources_map[_]
        true
     }
}
pi_memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_memory", null) |
        res := resources_map[_]
        true
     }
}

