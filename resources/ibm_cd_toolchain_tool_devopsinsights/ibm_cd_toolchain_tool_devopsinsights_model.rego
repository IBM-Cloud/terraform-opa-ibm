package ibmcloud.resources.model.ibm_cd_toolchain_tool_devopsinsights
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cd_toolchain_tool_devopsinsights"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cd_toolchain_tool_devopsinsights").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_cd_toolchain_tool_devopsinsights", "managed").resources[_]
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
referent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "referent", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
toolchain_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "toolchain_crn", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
state = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "state", null) |
        res := resources_map[_]
        true
     }
}
tool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tool_id", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}

