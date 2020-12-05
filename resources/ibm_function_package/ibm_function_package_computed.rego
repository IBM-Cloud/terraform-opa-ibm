package ibmcloud.resources.computed.ibm_function_package
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_function_package"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_function_package").resources[_]
}
version = ret {
    ret := {res.address: object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
annotations = ret {
    ret := {res.address: object.get(res.attributes, "annotations", null) |
        res := resources_map[_]
        true
     }
}
parameters = ret {
    ret := {res.address: object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
package_id = ret {
    ret := {res.address: object.get(res.attributes, "package_id", null) |
        res := resources_map[_]
        true
     }
}

