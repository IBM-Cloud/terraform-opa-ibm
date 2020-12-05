package ibmcloud.resources.computed.ibm_iam_service_id
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_service_id"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_iam_service_id").resources[_]
}
version = ret {
    ret := {res.address: object.get(res.attributes, "version", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {res.address: object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
iam_id = ret {
    ret := {res.address: object.get(res.attributes, "iam_id", null) |
        res := resources_map[_]
        true
     }
}

