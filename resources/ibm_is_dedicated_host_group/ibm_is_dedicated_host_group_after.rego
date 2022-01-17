package ibmcloud.resources.after.ibm_is_dedicated_host_group
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_dedicated_host_group"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_dedicated_host_group").resources[_]
}
family = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "family", null) |
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
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
class = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "class", null) |
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

