package ibmcloud.resources.state.data.ibm_compute_reserved_capacity
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_reserved_capacity"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_reserved_capacity", "data").resources[_]
}
flavor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor", null) |
        res := resources_map[_]
        true
     }
}
virtual_guests = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "virtual_guests", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
most_recent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "most_recent", null) |
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
pod = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pod", null) |
        res := resources_map[_]
        true
     }
}
instances = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instances", null) |
        res := resources_map[_]
        true
     }
}
