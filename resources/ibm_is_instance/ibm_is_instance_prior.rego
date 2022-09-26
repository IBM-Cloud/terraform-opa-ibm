package ibmcloud.resources.prior.ibm_is_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_instance"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_instance").resources[_]
}
passphrase = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "passphrase", null) |
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
private_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_key", null) |
        res := resources_map[_]
        true
     }
}

