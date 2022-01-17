package ibmcloud.resources.planned.ibm_iam_trusted_profile_link
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_link"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_trusted_profile_link").resources[_]
}
link = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "link", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}
cr_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cr_type", null) |
        res := resources_map[_]
        true
     }
}

