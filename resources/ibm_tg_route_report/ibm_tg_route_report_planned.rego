package ibmcloud.resources.planned.ibm_tg_route_report
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_tg_route_report"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_tg_route_report").resources[_]
}
gateway = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "gateway", null) |
        res := resources_map[_]
        true
     }
}

