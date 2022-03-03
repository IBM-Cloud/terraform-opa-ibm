package ibmcloud.resources.after.ibm_cbr_zone
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cbr_zone"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cbr_zone").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addresses", null) |
        res := resources_map[_]
        true
     }
}
excluded = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "excluded", null) |
        res := resources_map[_]
        true
     }
}

