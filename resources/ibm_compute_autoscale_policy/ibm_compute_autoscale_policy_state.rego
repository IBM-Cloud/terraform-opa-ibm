package ibmcloud.resources.state.ibm_compute_autoscale_policy
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_autoscale_policy"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_autoscale_policy", "managed").resources[_]
}
scale_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scale_type", null) |
        res := resources_map[_]
        true
     }
}
scale_amount = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scale_amount", null) |
        res := resources_map[_]
        true
     }
}
cooldown = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cooldown", null) |
        res := resources_map[_]
        true
     }
}
scale_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "scale_group_id", null) |
        res := resources_map[_]
        true
     }
}
triggers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "triggers", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
