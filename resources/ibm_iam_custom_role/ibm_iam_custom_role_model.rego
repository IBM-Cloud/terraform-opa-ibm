package ibmcloud.resources.model.ibm_iam_custom_role
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_custom_role"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_custom_role").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_iam_custom_role", "managed").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
display_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_name", null) |
        res := resources_map[_]
        true
     }
}
actions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "actions", null) |
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
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
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

