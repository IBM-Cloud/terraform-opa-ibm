package ibmcloud.resources.computed.ibm_api_gateway_endpoint
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_api_gateway_endpoint"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_api_gateway_endpoint").resources[_]
}
base_path = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "base_path", null) |
        res := resources_map[_]
        true
     }
}
endpoint_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "endpoint_id", null) |
        res := resources_map[_]
        true
     }
}
shared = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "shared", null) |
        res := resources_map[_]
        true
     }
}

