package ibmcloud.resources.computed.ibm_is_image
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_image"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_image").resources[_]
}
size = ret {
    ret := {res.address: object.get(res.attributes, "size", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {res.address: object.get(res.attributes, "resource_controller_url", null) |
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
visibility = ret {
    ret := {res.address: object.get(res.attributes, "visibility", null) |
        res := resources_map[_]
        true
     }
}
file = ret {
    ret := {res.address: object.get(res.attributes, "file", null) |
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
resource_name = ret {
    ret := {res.address: object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {res.address: object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}
encryption = ret {
    ret := {res.address: object.get(res.attributes, "encryption", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
resource_crn = ret {
    ret := {res.address: object.get(res.attributes, "resource_crn", null) |
        res := resources_map[_]
        true
     }
}
resource_group_name = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}

