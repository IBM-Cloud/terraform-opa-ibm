package ibmcloud.resources.after.ibm_atracker_target
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_atracker_target"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_atracker_target").resources[_]
}
target_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_type", null) |
        res := resources_map[_]
        true
     }
}
cos_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cos_endpoint", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

