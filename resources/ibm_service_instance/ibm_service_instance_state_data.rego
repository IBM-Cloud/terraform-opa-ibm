package ibmcloud.resources.state.data.ibm_service_instance
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_service_instance"
}

resources_map[attr]{
    attr := state.get_resources("ibm_service_instance", "data").resources[_]
}
credentials = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "credentials", null) |
        res := resources_map[_]
        true
     }
}
service_keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_keys", null) |
        res := resources_map[_]
        true
     }
}
service_plan_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_plan_guid", null) |
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
space_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "space_guid", null) |
        res := resources_map[_]
        true
     }
}
