package ibmcloud.resources.prior.ibm_hpcs_keystore
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_hpcs_keystore"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_hpcs_keystore").resources[_]
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}
keystore_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "keystore_id", null) |
        res := resources_map[_]
        true
     }
}
uko_vault = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "uko_vault", null) |
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

