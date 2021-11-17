package ibmcloud.resources.computed.ibm_cis_custom_page
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_custom_page"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_custom_page").resources[_]
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
required_tokens = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "required_tokens", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
preview_target = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "preview_target", null) |
        res := resources_map[_]
        true
     }
}

