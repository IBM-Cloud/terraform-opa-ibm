package ibmcloud.resources.computed.ibm_api_gateway_endpoint
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_api_gateway_endpoint"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_api_gateway_endpoint").resources[_]
}
endpoint_id = ret {
    ret := {res.address: object.get(res.attributes, "endpoint_id", null) |
        res := resources_map[_]
        true
     }
}
shared = ret {
    ret := {res.address: object.get(res.attributes, "shared", null) |
        res := resources_map[_]
        true
     }
}
base_path = ret {
    ret := {res.address: object.get(res.attributes, "base_path", null) |
        res := resources_map[_]
        true
     }
}

