package ibmcloud.resources.after.ibm_iam_access_group_members
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_members"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_access_group_members").resources[_]
}
iam_service_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_service_ids", null) |
        res := resources_map[_]
        true
     }
}
access_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_group_id", null) |
        res := resources_map[_]
        true
     }
}
ibm_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_ids", null) |
        res := resources_map[_]
        true
     }
}

