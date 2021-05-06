package ibmcloud.resources.state.ibm_cr_namespace
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cr_namespace"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cr_namespace", "managed").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}
updated_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_on", null) |
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
resource_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_name", null) |
        res := resources_map[_]
        true
     }
}
