package ibmcloud.resources.computed.ibm_atracker_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_settings"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_atracker_settings").resources[_]
}
api_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_version", null) |
        res := resources_map[_]
        true
     }
}

