package ibmcloud.resources.after.ibm_is_lb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_lb"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_is_lb").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {res.address: object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {res.address: object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
subnets = ret {
    ret := {res.address: object.get(res.attributes, "subnets", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
profile = ret {
    ret := {res.address: object.get(res.attributes, "profile", null) |
        res := resources_map[_]
        true
     }
}

