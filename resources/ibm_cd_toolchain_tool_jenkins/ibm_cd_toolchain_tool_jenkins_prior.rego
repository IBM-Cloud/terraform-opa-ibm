package ibmcloud.resources.prior.ibm_cd_toolchain_tool_jenkins
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_toolchain_tool_jenkins"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_cd_toolchain_tool_jenkins").resources[_]
}
tool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tool_id", null) |
        res := resources_map[_]
        true
     }
}
toolchain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "toolchain_id", null) |
        res := resources_map[_]
        true
     }
}

