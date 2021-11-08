package ibmcloud.resources.model.ibm_appid_application
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_application"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_application").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_appid_application", "managed").resources[_]
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
secret = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret", null) |
        res := resources_map[_]
        true
     }
}
oauth_server_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "oauth_server_url", null) |
        res := resources_map[_]
        true
     }
}
profiles_url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "profiles_url", null) |
        res := resources_map[_]
        true
     }
}
discovery_endpoint = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "discovery_endpoint", null) |
        res := resources_map[_]
        true
     }
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}

