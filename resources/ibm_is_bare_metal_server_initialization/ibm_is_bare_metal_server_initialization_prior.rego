package ibmcloud.resources.prior.ibm_is_bare_metal_server_initialization
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_bare_metal_server_initialization"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_bare_metal_server_initialization").resources[_]
}
bare_metal_server = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "bare_metal_server", null) |
        res := resources_map[_]
        true
     }
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

