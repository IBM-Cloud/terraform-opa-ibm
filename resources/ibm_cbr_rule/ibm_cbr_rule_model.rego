package ibmcloud.resources.model.ibm_cbr_rule
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cbr_rule"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cbr_rule").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cbr_rule", "managed").resources[_]
}
resources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resources", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
created_by_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by_id", null) |
        res := resources_map[_]
        true
     }
}
last_modified_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_modified_at", null) |
        res := resources_map[_]
        true
     }
}
last_modified_by_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_modified_by_id", null) |
        res := resources_map[_]
        true
     }
}
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
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
contexts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "contexts", null) |
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

