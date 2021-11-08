package ibmcloud.resources.computed.ibm_iam_trusted_profile_link
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_link"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_trusted_profile_link").resources[_]
}
link_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "link_id", null) |
        res := resources_map[_]
        true
     }
}
entity_tag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entity_tag", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
modified_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_at", null) |
        res := resources_map[_]
        true
     }
}

