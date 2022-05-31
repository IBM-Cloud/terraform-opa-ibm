package ibmcloud.resources.computed.ibm_atracker_target
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_target"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_atracker_target").resources[_]
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
encrypt_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encrypt_key", null) |
        res := resources_map[_]
        true
     }
}
cos_write_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cos_write_status", null) |
        res := resources_map[_]
        true
     }
}
created = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created", null) |
        res := resources_map[_]
        true
     }
}
updated = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated", null) |
        res := resources_map[_]
        true
     }
}

