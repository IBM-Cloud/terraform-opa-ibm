package ibmcloud.resources.state.ibm_compute_ssh_key
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_compute_ssh_key"
}

resources_map[attr]{
    attr := state.get_resources("ibm_compute_ssh_key", "managed").resources[_]
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
notes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notes", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
