package ibmcloud.resources.state.data.ibm_tg_route_reports
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_route_reports"
}

resources_map[attr]{
    attr := state.get_resources("ibm_tg_route_reports", "data").resources[_]
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}
route_reports = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_reports", null) |
        res := resources_map[_]
        true
     }
}
