package ibmcloud.resources.model.ibm_tg_route_report
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_route_report"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_tg_route_report").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_tg_route_report", "managed").resources[_]
}
route_report_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "route_report_id", null) |
        res := resources_map[_]
        true
     }
}
connections = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "connections", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
overlapping_routes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "overlapping_routes", null) |
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
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}

