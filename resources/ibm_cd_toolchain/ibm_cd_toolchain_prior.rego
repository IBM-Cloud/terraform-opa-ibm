package ibmcloud.resources.prior.ibm_cd_toolchain
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_toolchain"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cd_toolchain").resources[_]
}
toolchain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "toolchain_id", null) |
        res := resources_map[_]
        true
     }
}

