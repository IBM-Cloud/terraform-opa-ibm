package ibmcloud.resources.state.ibm_function_action
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_action"
}

resources_map[attr]{
    attr := state.get_resources("ibm_function_action", "managed").resources[_]
}
target_endpoint_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_endpoint_url", null) |
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
exec = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "exec", null) |
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
user_defined_annotations = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_defined_annotations", null) |
        res := resources_map[_]
        true
     }
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
namespace = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespace", null) |
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
publish = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "publish", null) |
        res := resources_map[_]
        true
     }
}
user_defined_parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_defined_parameters", null) |
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
