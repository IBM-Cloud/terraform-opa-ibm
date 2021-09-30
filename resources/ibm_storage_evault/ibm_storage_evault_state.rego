package ibmcloud.resources.state.ibm_storage_evault
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_storage_evault"
}

resources_map[attr]{
    attr := state.get_resources("ibm_storage_evault", "managed").resources[_]
}
username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
password = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "password", null) |
        res := resources_map[_]
        true
     }
}
service_resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_resource_name", null) |
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
datacenter = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "datacenter", null) |
        res := resources_map[_]
        true
     }
}
capacity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "capacity", null) |
        res := resources_map[_]
        true
     }
}
virtual_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_instance_id", null) |
        res := resources_map[_]
        true
     }
}
hardware_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "hardware_instance_id", null) |
        res := resources_map[_]
        true
     }
}
