package ibmcloud.resources.planned.ibm_cd_toolchain_tool_appconfig
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_toolchain_tool_appconfig"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cd_toolchain_tool_appconfig").resources[_]
}
toolchain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "toolchain_id", null) |
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
parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}

