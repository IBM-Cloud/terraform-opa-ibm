package ibmcloud.resources.state.data.ibm_pi_instance
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_pi_instance"
}

resources_map[attr]{
    attr := state.get_resources("ibm_pi_instance", "data").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
minproc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "minproc", null) |
        res := resources_map[_]
        true
     }
}
maxproc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "maxproc", null) |
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
pi_cloud_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_cloud_instance_id", null) |
        res := resources_map[_]
        true
     }
}
proctype = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "proctype", null) |
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
pi_instance_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pi_instance_name", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
minmem = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "minmem", null) |
        res := resources_map[_]
        true
     }
}
maxmem = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "maxmem", null) |
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
volumes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volumes", null) |
        res := resources_map[_]
        true
     }
}
processors = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "processors", null) |
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
addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addresses", null) |
        res := resources_map[_]
        true
     }
}
virtual_cores_assigned = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_cores_assigned", null) |
        res := resources_map[_]
        true
     }
}
memory = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "memory", null) |
        res := resources_map[_]
        true
     }
}
