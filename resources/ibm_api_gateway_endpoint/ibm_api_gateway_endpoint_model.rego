package ibmcloud.resources.model.ibm_api_gateway_endpoint
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_api_gateway_endpoint"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_api_gateway_endpoint").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_api_gateway_endpoint", "managed").resources[_]
}
managed = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "managed", null) |
        res := resources_map[_]
        true
     }
}
provider_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "provider_id", null) |
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
shared = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "shared", null) |
        res := resources_map[_]
        true
     }
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
service_instance_crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "service_instance_crn", null) |
        res := resources_map[_]
        true
     }
}
open_api_doc_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "open_api_doc_name", null) |
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
routes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "routes", null) |
        res := resources_map[_]
        true
     }
}

