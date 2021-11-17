package ibmcloud.resources.state.data.ibm_appid_mfa_channel
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_mfa_channel"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_mfa_channel", "data").resources[_]
}
sms_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sms_config", null) |
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
active = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "active", null) |
        res := resources_map[_]
        true
     }
}
