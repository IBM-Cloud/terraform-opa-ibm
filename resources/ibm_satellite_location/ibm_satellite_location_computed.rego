package ibmcloud.resources.computed.ibm_satellite_location
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_satellite_location"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_satellite_location").resources[_]
}
zones = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zones", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}

