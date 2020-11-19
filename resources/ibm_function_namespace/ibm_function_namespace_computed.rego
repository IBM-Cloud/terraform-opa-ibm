package ibmcloud.resources.computed.ibm_function_namespace
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_function_namespace"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_function_namespace").resources[_]
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}

