package ibmcloud.resources.after.ibm_is_image
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_is_image"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_image").resources[_]
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
operating_system = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "operating_system", null) |
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
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}

