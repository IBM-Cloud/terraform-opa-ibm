package ibmcloud.resources.state.data.ibm_resource_key
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_key"
}

resources_map[attr]{
    attr := state.get_resources("ibm_resource_key", "data").resources[_]
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
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
resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_instance_id", null) |
        res := resources_map[_]
        true
     }
}
resource_alias_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_alias_id", null) |
        res := resources_map[_]
        true
     }
}
role = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "role", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}
credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials", null) |
        res := resources_map[_]
        true
     }
}
most_recent = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "most_recent", null) |
        res := resources_map[_]
        true
     }
}
