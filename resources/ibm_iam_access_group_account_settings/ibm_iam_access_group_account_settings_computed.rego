package ibmcloud.resources.computed.ibm_iam_access_group_account_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_account_settings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_access_group_account_settings").resources[_]
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}

