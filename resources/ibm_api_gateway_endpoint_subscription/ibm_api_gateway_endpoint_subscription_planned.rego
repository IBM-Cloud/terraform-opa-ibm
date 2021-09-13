package ibmcloud.resources.planned.ibm_api_gateway_endpoint_subscription
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_api_gateway_endpoint_subscription"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_api_gateway_endpoint_subscription").resources[_]
}
artifact_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "artifact_id", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "type", null) |
        res := resources_map[_]
        true
     }
}
client_secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_secret", null) |
        res := resources_map[_]
        true
     }
}
generate_secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "generate_secret", null) |
        res := resources_map[_]
        true
     }
}

