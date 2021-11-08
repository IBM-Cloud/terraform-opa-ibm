package ibmcloud.resources.after.ibm_cm_catalog
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cm_catalog"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cm_catalog").resources[_]
}
tags = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
kind = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "kind", null) |
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
short_description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "short_description", null) |
        res := resources_map[_]
        true
     }
}
catalog_icon_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "catalog_icon_url", null) |
        res := resources_map[_]
        true
     }
}

