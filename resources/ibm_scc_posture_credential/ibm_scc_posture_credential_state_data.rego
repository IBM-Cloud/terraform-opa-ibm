package ibmcloud.resources.state.data.ibm_scc_posture_credential
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_credential"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_credential", "data").resources[_]
}
credential_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credential_id", null) |
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
display_fields = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_fields", null) |
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
updated_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_by", null) |
        res := resources_map[_]
        true
     }
}
purpose = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "purpose", null) |
        res := resources_map[_]
        true
     }
}
credential_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credential_type", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "group", null) |
        res := resources_map[_]
        true
     }
}
