package ibmcloud.resources.model.ibm_iam_trusted_profile_link
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_trusted_profile_link"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_iam_trusted_profile_link").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_iam_trusted_profile_link", "managed").resources[_]
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

