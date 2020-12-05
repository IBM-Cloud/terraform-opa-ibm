package ibmcloud.resources.planned.ibm_cis_edge_functions_action
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_edge_functions_action"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_edge_functions_action").resources[_]
}
cis_id = ret {
    ret := {res.address: object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {res.address: object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
action_name = ret {
    ret := {res.address: object.get(res.attributes, "action_name", null) |
        res := resources_map[_]
        true
     }
}
script = ret {
    ret := {res.address: object.get(res.attributes, "script", null) |
        res := resources_map[_]
        true
     }
}

