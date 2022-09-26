package ibmcloud.resources.state.data.ibm_compute_ssh_key
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_ssh_key"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_ssh_key", "data").resources[_]
}
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
        res := resources_map[_]
        true
     }
}
most_recent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "most_recent", null) |
        res := resources_map[_]
        true
     }
}
label = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "label", null) |
        res := resources_map[_]
        true
     }
}
public_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "public_key", null) |
        res := resources_map[_]
        true
     }
}
fingerprint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "fingerprint", null) |
        res := resources_map[_]
        true
     }
}
