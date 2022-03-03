package ibmcloud.resources.state.data.ibm_cis_webhooks
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_webhooks"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_webhooks", "data").resources[_]
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
        res := resources_map[_]
        true
     }
}
cis_webhooks = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_webhooks", null) |
        res := resources_map[_]
        true
     }
}
