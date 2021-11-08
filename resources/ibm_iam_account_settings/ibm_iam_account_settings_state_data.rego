package ibmcloud.resources.state.data.ibm_iam_account_settings
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_account_settings"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_account_settings", "data").resources[_]
}
include_history = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "include_history", null) |
        res := resources_map[_]
        true
     }
}
allowed_ip_addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "allowed_ip_addresses", null) |
        res := resources_map[_]
        true
     }
}
mfa = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "mfa", null) |
        res := resources_map[_]
        true
     }
}
history = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "history", null) |
        res := resources_map[_]
        true
     }
}
session_expiration_in_seconds = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_expiration_in_seconds", null) |
        res := resources_map[_]
        true
     }
}
max_sessions_per_identity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "max_sessions_per_identity", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
restrict_create_service_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "restrict_create_service_id", null) |
        res := resources_map[_]
        true
     }
}
restrict_create_platform_apikey = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "restrict_create_platform_apikey", null) |
        res := resources_map[_]
        true
     }
}
entity_tag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entity_tag", null) |
        res := resources_map[_]
        true
     }
}
session_invalidation_in_seconds = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_invalidation_in_seconds", null) |
        res := resources_map[_]
        true
     }
}
