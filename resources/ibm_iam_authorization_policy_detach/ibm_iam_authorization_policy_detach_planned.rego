package ibmcloud.resources.planned.ibm_iam_authorization_policy_detach
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_authorization_policy_detach"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_authorization_policy_detach").resources[_]
}
authorization_policy_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "authorization_policy_id", null) |
        res := resources_map[_]
        true
     }
}

