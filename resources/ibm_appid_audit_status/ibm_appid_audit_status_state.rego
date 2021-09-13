package ibmcloud.resources.state.ibm_appid_audit_status
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_audit_status"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_audit_status", "managed").resources[_]
}
is_active = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "is_active", null) |
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
