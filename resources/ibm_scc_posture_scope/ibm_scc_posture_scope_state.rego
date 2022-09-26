package ibmcloud.resources.state.ibm_scc_posture_scope
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_scope"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_scope", "managed").resources[_]
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
collector_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "collector_ids", null) |
        res := resources_map[_]
        true
     }
}
credential_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credential_id", null) |
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
