package ibmcloud.resources.after.ibm_scc_posture_collector
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_collector"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_scc_posture_collector").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
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

