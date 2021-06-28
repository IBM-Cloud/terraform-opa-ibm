package ibmcloud.resources.planned.ibm_resource_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_resource_key"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_resource_key").resources[_]
}
parameters = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
resource_alias_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_alias_id", null) |
        res := resources_map[_]
        true
     }
}
resource_instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resource_instance_id", null) |
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
role = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "role", null) |
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

