package ibmcloud.resources.prior.ibm_iam_api_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_api_key"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_iam_api_key").resources[_]
}
apikey_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "apikey_id", null) |
        res := resources_map[_]
        true
     }
}

