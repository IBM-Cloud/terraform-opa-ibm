package ibmcloud.resources.computed.ibm_resource_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_instance"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_resource_instance").resources[_]
}
status = ret {
    ret := {res.address: object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
guid = ret {
    ret := {res.address: object.get(res.attributes, "guid", null) |
        res := resources_map[_]
        true
     }
}
dashboard_url = ret {
    ret := {res.address: object.get(res.attributes, "dashboard_url", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {res.address: object.get(res.attributes, "crn", null) |
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
extensions = ret {
    ret := {res.address: object.get(res.attributes, "extensions", null) |
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
service_endpoints = ret {
    ret := {res.address: object.get(res.attributes, "service_endpoints", null) |
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
resource_controller_url = ret {
    ret := {res.address: object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}

