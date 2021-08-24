package ibmcloud.resources.computed.ibm_appid_application
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_application"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_appid_application").resources[_]
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
client_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "client_id", null) |
        res := resources_map[_]
        true
     }
}

