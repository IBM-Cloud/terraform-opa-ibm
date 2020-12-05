package ibmcloud.resources.prior.ibm_function_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_action"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_function_action").resources[_]
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
namespace = ret {
    ret := {res.address: object.get(res.attributes, "namespace", null) |
        res := resources_map[_]
        true
     }
}

