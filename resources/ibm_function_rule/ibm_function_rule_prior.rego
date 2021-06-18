package ibmcloud.resources.prior.ibm_function_rule
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_rule"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_function_rule").resources[_]
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

