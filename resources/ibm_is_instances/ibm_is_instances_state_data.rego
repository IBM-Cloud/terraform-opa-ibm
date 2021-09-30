package ibmcloud.resources.state.data.ibm_is_instances
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instances"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instances", "data").resources[_]
}
vpc_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_crn", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
placement_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_group_name", null) |
        res := resources_map[_]
        true
     }
}
placement_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_group", null) |
        res := resources_map[_]
        true
     }
}
instance_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group", null) |
        res := resources_map[_]
        true
     }
}
instance_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_group_name", null) |
        res := resources_map[_]
        true
     }
}
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
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
vpc_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc_name", null) |
        res := resources_map[_]
        true
     }
}
dedicated_host_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host_name", null) |
        res := resources_map[_]
        true
     }
}
dedicated_host = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dedicated_host", null) |
        res := resources_map[_]
        true
     }
}
