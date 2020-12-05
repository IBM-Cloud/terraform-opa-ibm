package ibmcloud.resources.state.data.ibm_schematics_workspace
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_schematics_workspace"
}

resources_map[attr]{
    attr := state.get_resources("ibm_schematics_workspace", "data").resources[_]
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
types = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "types", null) |
        res := resources_map[_]
        true
     }
}
is_frozen = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_frozen", null) |
        res := resources_map[_]
        true
     }
}
catalog_ref = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_ref", null) |
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
template_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "template_id", null) |
        res := resources_map[_]
        true
     }
}
is_locked = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_locked", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
workspace_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "workspace_id", null) |
        res := resources_map[_]
        true
     }
}
resource_group = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
resource_controller_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_controller_url", null) |
        res := resources_map[_]
        true
     }
}
