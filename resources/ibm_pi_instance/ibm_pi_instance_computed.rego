package ibmcloud.resources.computed.ibm_pi_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_instance"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_pi_instance").resources[_]
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
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
addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addresses", null) |
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
os_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "os_type", null) |
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
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
migratable = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "migratable", null) |
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
pi_virtual_cores_assigned = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_virtual_cores_assigned", null) |
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
min_virtual_cores = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "min_virtual_cores", null) |
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
max_processors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_processors", null) |
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
pi_volume_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_volume_ids", null) |
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

