package ibmcloud.resources.computed.ibm_cm_catalog
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_catalog"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cm_catalog").resources[_]
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
offerings_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offerings_url", null) |
        res := resources_map[_]
        true
     }
}
url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url", null) |
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

