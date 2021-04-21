package ibmcloud.resources.planned.ibm_cm_offering
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_offering"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cm_offering").resources[_]
}
catalog_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_id", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
label = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "label", null) |
        res := resources_map[_]
        true
     }
}

