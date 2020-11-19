package ibmcloud.resources.state.data.ibm_service_plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_service_plan"
}

resources_map[attr]{
    attr := state.get_resources("ibm_service_plan", "data").resources[_]
}
service = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service", null) |
        res := resources_map[_]
        true
     }
}
plan = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "plan", null) |
        res := resources_map[_]
        true
     }
}
