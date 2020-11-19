package ibmcloud.resources.computed.ibm_iam_access_group_members
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_iam_access_group_members"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_access_group_members").resources[_]
}
members = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members", null) |
        res := resources_map[_]
        true
     }
}

