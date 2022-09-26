package ibmcloud.resources.planned.ibm_cm_version
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_version"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cm_version").resources[_]
}
catalog_identifier = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_identifier", null) |
        res := resources_map[_]
        true
     }
}
content = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "content", null) |
        res := resources_map[_]
        true
     }
}
offering_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "offering_id", null) |
        res := resources_map[_]
        true
     }
}
target_kinds = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_kinds", null) |
        res := resources_map[_]
        true
     }
}
zipurl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zipurl", null) |
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
target_version = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "target_version", null) |
        res := resources_map[_]
        true
     }
}

