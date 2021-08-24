package ibmcloud.resources.computed.ibm_api_gateway_endpoint_subscription
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_api_gateway_endpoint_subscription"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_api_gateway_endpoint_subscription").resources[_]
}
secret_provided = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_provided", null) |
        res := resources_map[_]
        true
     }
}
client_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_id", null) |
        res := resources_map[_]
        true
     }
}

