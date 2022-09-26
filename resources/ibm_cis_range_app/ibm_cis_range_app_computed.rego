package ibmcloud.resources.computed.ibm_cis_range_app
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_range_app"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_range_app").resources[_]
}
app_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "app_id", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}

