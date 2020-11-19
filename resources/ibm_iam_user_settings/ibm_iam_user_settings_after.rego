package ibmcloud.resources.after.ibm_iam_user_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_user_settings"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_user_settings").resources[_]
}
iam_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_id", null) |
        res := resources_map[_]
        true
     }
}
allowed_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_ip_addresses", null) |
        res := resources_map[_]
        true
     }
}

