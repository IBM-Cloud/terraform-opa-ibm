package ibmcloud.resources.state.ibm_compute_placement_group
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_placement_group"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_placement_group", "managed").resources[_]
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
rule = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rule", null) |
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
