package ibmcloud.resources.state.data.ibm_is_instances
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instances"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_instances", "data").resources[_]
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
vpc = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "vpc", null) |
        res := resources_map[_]
        true
     }
}
