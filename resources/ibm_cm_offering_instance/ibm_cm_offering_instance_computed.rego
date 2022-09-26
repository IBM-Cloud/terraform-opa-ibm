package ibmcloud.resources.computed.ibm_cm_offering_instance
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_offering_instance"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cm_offering_instance").resources[_]
}
url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url", null) |
        res := resources_map[_]
        true
     }
}
schematics_workspace_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "schematics_workspace_id", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}

