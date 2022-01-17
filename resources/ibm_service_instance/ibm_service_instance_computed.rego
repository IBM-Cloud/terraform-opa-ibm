package ibmcloud.resources.computed.ibm_service_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_service_instance"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_service_instance").resources[_]
}
service_keys = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_keys", null) |
        res := resources_map[_]
        true
     }
}
dashboard_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "dashboard_url", null) |
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
service_plan_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_plan_guid", null) |
        res := resources_map[_]
        true
     }
}

