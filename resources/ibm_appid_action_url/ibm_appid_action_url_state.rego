package ibmcloud.resources.state.ibm_appid_action_url
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_appid_action_url"
}

resources_map[attr]{
    attr := state.get_resources("ibm_appid_action_url", "managed").resources[_]
}
action = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "action", null) |
        res := resources_map[_]
        true
     }
}
url = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "url", null) |
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
