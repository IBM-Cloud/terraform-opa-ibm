package ibmcloud.resources.prior.ibm_function_package
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_function_package"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_function_package").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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

