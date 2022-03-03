package ibmcloud.resources.after.ibm_scc_posture_credential
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_posture_credential"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_scc_posture_credential").resources[_]
}
group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "group", null) |
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
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
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
display_fields = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "display_fields", null) |
        res := resources_map[_]
        true
     }
}

