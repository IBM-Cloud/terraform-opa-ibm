package ibmcloud.resources.computed.ibm_iam_authorization_policy
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_authorization_policy"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_authorization_policy").resources[_]
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
source_service_account = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_service_account", null) |
        res := resources_map[_]
        true
     }
}

