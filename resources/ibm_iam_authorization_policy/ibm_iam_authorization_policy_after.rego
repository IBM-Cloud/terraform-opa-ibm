package ibmcloud.resources.after.ibm_iam_authorization_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_authorization_policy"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_authorization_policy").resources[_]
}
target_service_name = ret {
    ret := {res.address: object.get(res.attributes, "target_service_name", null) |
        res := resources_map[_]
        true
     }
}
roles = ret {
    ret := {res.address: object.get(res.attributes, "roles", null) |
        res := resources_map[_]
        true
     }
}
source_resource_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "source_resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
target_resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "target_resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
source_service_account = ret {
    ret := {res.address: object.get(res.attributes, "source_service_account", null) |
        res := resources_map[_]
        true
     }
}
source_service_name = ret {
    ret := {res.address: object.get(res.attributes, "source_service_name", null) |
        res := resources_map[_]
        true
     }
}
target_resource_instance_id = ret {
    ret := {res.address: object.get(res.attributes, "target_resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
source_resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "source_resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
source_resource_type = ret {
    ret := {res.address: object.get(res.attributes, "source_resource_type", null) |
        res := resources_map[_]
        true
     }
}
target_resource_type = ret {
    ret := {res.address: object.get(res.attributes, "target_resource_type", null) |
        res := resources_map[_]
        true
     }
}

