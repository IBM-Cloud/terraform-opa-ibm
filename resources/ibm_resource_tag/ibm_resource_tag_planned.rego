package ibmcloud.resources.planned.ibm_resource_tag
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_tag"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_resource_tag").resources[_]
}
resource_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_id", null) |
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
resource_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_type", null) |
        res := resources_map[_]
        true
     }
}
tag_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tag_type", null) |
        res := resources_map[_]
        true
     }
}

