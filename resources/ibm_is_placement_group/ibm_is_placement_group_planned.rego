package ibmcloud.resources.planned.ibm_is_placement_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_placement_group"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_is_placement_group").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
access_tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_tags", null) |
        res := resources_map[_]
        true
     }
}
strategy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "strategy", null) |
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
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}

