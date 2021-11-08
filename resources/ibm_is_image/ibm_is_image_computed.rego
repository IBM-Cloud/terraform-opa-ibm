package ibmcloud.resources.computed.ibm_is_image
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_image"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_is_image").resources[_]
}
resource_group_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_name", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
visibility = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "visibility", null) |
        res := resources_map[_]
        true
     }
}
checksum = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "checksum", null) |
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
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
encryption = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption", null) |
        res := resources_map[_]
        true
     }
}
size = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "size", null) |
        res := resources_map[_]
        true
     }
}
file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
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
resource_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_crn", null) |
        res := resources_map[_]
        true
     }
}
resource_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_status", null) |
        res := resources_map[_]
        true
     }
}

