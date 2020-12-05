package ibmcloud.resources.planned.ibm_cis
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis").resources[_]
}
parameters = ret {
    ret := {res.address: object.get(res.attributes, "parameters", null) |
        res := resources_map[_]
        true
     }
}
plan = ret {
    ret := {res.address: object.get(res.attributes, "plan", null) |
        res := resources_map[_]
        true
     }
}
resource_group_id = ret {
    ret := {res.address: object.get(res.attributes, "resource_group_id", null) |
        res := resources_map[_]
        true
     }
}
location = ret {
    ret := {res.address: object.get(res.attributes, "location", null) |
        res := resources_map[_]
        true
     }
}
tags = ret {
    ret := {res.address: object.get(res.attributes, "tags", null) |
        res := resources_map[_]
        true
     }
}
name = ret {
    ret := {res.address: object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

