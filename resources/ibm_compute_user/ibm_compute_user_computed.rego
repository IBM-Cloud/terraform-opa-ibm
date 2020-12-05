package ibmcloud.resources.computed.ibm_compute_user
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_user"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_user").resources[_]
}
username = ret {
    ret := {res.address: object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
api_key = ret {
    ret := {res.address: object.get(res.attributes, "api_key", null) |
        res := resources_map[_]
        true
     }
}
ibm_id = ret {
    ret := {res.address: object.get(res.attributes, "ibm_id", null) |
        res := resources_map[_]
        true
     }
}

