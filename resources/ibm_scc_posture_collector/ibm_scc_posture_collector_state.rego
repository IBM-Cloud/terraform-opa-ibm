package ibmcloud.resources.state.ibm_scc_posture_collector
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_collector"
}

resources_map[attr]{
    attr := state.get_resources("ibm_scc_posture_collector", "managed").resources[_]
}
is_public = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_public", null) |
        res := resources_map[_]
        true
     }
}
managed_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managed_by", null) |
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
passphrase = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "passphrase", null) |
        res := resources_map[_]
        true
     }
}
is_ubi_image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_ubi_image", null) |
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
