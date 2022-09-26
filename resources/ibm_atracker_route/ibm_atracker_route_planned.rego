package ibmcloud.resources.planned.ibm_atracker_route
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_route"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_atracker_route").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
rules = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "rules", null) |
        res := resources_map[_]
        true
     }
}
receive_global_events = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "receive_global_events", null) |
        res := resources_map[_]
        true
     }
}

