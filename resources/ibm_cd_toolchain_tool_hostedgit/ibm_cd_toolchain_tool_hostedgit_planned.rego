package ibmcloud.resources.planned.ibm_cd_toolchain_tool_hostedgit
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_toolchain_tool_hostedgit"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cd_toolchain_tool_hostedgit").resources[_]
}
initialization = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "initialization", null) |
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
toolchain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "toolchain_id", null) |
        res := resources_map[_]
        true
     }
}
parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}

