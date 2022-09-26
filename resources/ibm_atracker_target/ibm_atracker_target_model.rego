package ibmcloud.resources.model.ibm_atracker_target
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_target"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_atracker_target").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_atracker_target", "managed").resources[_]
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
region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region", null) |
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
write_status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "write_status", null) |
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
encrypt_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encrypt_key", null) |
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
api_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_version", null) |
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
logdna_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "logdna_endpoint", null) |
        res := resources_map[_]
        true
     }
}
encryption_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "encryption_key", null) |
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
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
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

