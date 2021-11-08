package ibmcloud.resources.state.ibm_atracker_target
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_target"
}

resources_map[attr]{
    attr := state.get_resources("ibm_atracker_target", "managed").resources[_]
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
target_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_type", null) |
        res := resources_map[_]
        true
     }
}
cos_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cos_endpoint", null) |
        res := resources_map[_]
        true
     }
}
