package ibmcloud.resources.model.ibm_iam_access_group_members
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_access_group_members"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_access_group_members").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_iam_access_group_members", "managed").resources[_]
}
ibm_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_ids", null) |
        res := resources_map[_]
        true
     }
}
iam_service_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_service_ids", null) |
        res := resources_map[_]
        true
     }
}
members = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "members", null) |
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

