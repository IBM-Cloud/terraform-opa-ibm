package ibmcloud.resources.computed.ibm_function_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_action"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_function_action").resources[_]
}
annotations = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "annotations", null) |
        res := resources_map[_]
        true
     }
}
parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
action_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action_id", null) |
        res := resources_map[_]
        true
     }
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
target_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_endpoint_url", null) |
        res := resources_map[_]
        true
     }
}
limits = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "limits", null) |
        res := resources_map[_]
        true
     }
}

