package ibmcloud.resources.planned.ibm_iam_authorization_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_authorization_policy"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_authorization_policy").resources[_]
}
source_resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
source_resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_resource_type", null) |
        res := resources_map[_]
        true
     }
}
target_resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_resource_type", null) |
        res := resources_map[_]
        true
     }
}
source_resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
target_resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
target_resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
source_service_account = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_service_account", null) |
        res := resources_map[_]
        true
     }
}
source_service_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_service_name", null) |
        res := resources_map[_]
        true
     }
}
target_service_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_service_name", null) |
        res := resources_map[_]
        true
     }
}
roles = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "roles", null) |
        res := resources_map[_]
        true
     }
}

