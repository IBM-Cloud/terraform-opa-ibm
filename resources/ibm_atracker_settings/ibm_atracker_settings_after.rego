package ibmcloud.resources.after.ibm_atracker_settings
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_settings"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_atracker_settings").resources[_]
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

