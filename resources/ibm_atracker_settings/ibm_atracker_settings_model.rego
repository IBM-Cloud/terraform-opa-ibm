package ibmcloud.resources.model.ibm_atracker_settings
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_settings"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_atracker_settings").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_atracker_settings", "managed").resources[_]
}
metadata_region_primary = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metadata_region_primary", null) |
        res := resources_map[_]
        true
     }
}
private_api_endpoint_only = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "private_api_endpoint_only", null) |
        res := resources_map[_]
        true
     }
}
default_targets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_targets", null) |
        res := resources_map[_]
        true
     }
}
permitted_target_regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "permitted_target_regions", null) |
        res := resources_map[_]
        true
     }
}
metadata_region_backup = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "metadata_region_backup", null) |
        res := resources_map[_]
        true
     }
}
api_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_version", null) |
        res := resources_map[_]
        true
     }
}

