package ibmcloud.resources.state.data.ibm_scc_posture_profile
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_profile"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_profile", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
modified_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_by", null) |
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
profile_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_id", null) |
        res := resources_map[_]
        true
     }
}
base_profile = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base_profile", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
no_of_controls = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "no_of_controls", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
reason_for_delete = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "reason_for_delete", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
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
version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
profile_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profile_type", null) |
        res := resources_map[_]
        true
     }
}
