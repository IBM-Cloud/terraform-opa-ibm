package ibmcloud.resources.computed.ibm_iam_service_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_service_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_service_policy").resources[_]
}
resources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resources", null) |
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

