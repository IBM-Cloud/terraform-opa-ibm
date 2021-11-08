package ibmcloud.resources.after.ibm_is_dedicated_host
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_dedicated_host").resources[_]
}
profile = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile", null) |
        res := resources_map[_]
        true
     }
}
instance_placement_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_placement_enabled", null) |
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
host_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_group", null) |
        res := resources_map[_]
        true
     }
}

