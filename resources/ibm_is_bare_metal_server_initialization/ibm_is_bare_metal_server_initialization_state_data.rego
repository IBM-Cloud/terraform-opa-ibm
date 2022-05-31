package ibmcloud.resources.state.data.ibm_is_bare_metal_server_initialization
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_initialization"
}

resources_map[attr]{
    attr := state.get_resources("ibm_is_bare_metal_server_initialization", "data").resources[_]
}
private_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_key", null) |
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
image = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image", null) |
        res := resources_map[_]
        true
     }
}
image_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "image_name", null) |
        res := resources_map[_]
        true
     }
}
user_accounts = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "user_accounts", null) |
        res := resources_map[_]
        true
     }
}
keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "keys", null) |
        res := resources_map[_]
        true
     }
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
}
