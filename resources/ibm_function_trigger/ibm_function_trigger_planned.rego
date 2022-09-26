package ibmcloud.resources.planned.ibm_function_trigger
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_trigger"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_function_trigger").resources[_]
}
feed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "feed", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

