package ibmcloud.resources.model.ibm_appid_token_config
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_token_config"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_appid_token_config").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_appid_token_config", "managed").resources[_]
}
tenant_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "tenant_id", null) |
        res := resources_map[_]
        true
     }
}
access_token_expires_in = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_token_expires_in", null) |
        res := resources_map[_]
        true
     }
}
refresh_token_expires_in = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "refresh_token_expires_in", null) |
        res := resources_map[_]
        true
     }
}
anonymous_token_expires_in = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "anonymous_token_expires_in", null) |
        res := resources_map[_]
        true
     }
}
anonymous_access_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "anonymous_access_enabled", null) |
        res := resources_map[_]
        true
     }
}
refresh_token_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "refresh_token_enabled", null) |
        res := resources_map[_]
        true
     }
}
access_token_claim = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "access_token_claim", null) |
        res := resources_map[_]
        true
     }
}
id_token_claim = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "id_token_claim", null) |
        res := resources_map[_]
        true
     }
}

