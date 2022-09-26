package ibmcloud.resources.planned.ibm_iam_access_group_account_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_account_settings"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_access_group_account_settings").resources[_]
}
public_access_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_access_enabled", null) |
        res := resources_map[_]
        true
     }
}

