package ibmcloud.resources.computed.ibm_compute_user
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_compute_user"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_compute_user").resources[_]
}
api_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "api_key", null) |
        res := resources_map[_]
        true
     }
}
username = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "username", null) |
        res := resources_map[_]
        true
     }
}
ibm_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ibm_id", null) |
        res := resources_map[_]
        true
     }
}

