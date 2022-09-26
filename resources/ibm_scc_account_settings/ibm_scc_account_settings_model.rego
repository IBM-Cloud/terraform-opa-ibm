package ibmcloud.resources.model.ibm_scc_account_settings
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_scc_account_settings"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_scc_account_settings").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_scc_account_settings", "managed").resources[_]
}
event_notifications = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "event_notifications", null) |
        res := resources_map[_]
        true
     }
}
location_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "location_id", null) |
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

