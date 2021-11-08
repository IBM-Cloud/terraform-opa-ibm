package ibmcloud.resources.after.ibm_appid_mfa_channel
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_mfa_channel"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_appid_mfa_channel").resources[_]
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
sms_config = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sms_config", null) |
        res := resources_map[_]
        true
     }
}

