package ibmcloud.resources.after.ibm_function_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_action"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_function_action").resources[_]
}
user_defined_annotations = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_defined_annotations", null) |
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

