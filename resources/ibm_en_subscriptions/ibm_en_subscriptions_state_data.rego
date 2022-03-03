package ibmcloud.resources.state.data.ibm_en_subscriptions
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_subscriptions"
}

resources_map[attr]{
    attr := state.get_resources("ibm_en_subscriptions", "data").resources[_]
}
search_key = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "search_key", null) |
        res := resources_map[_]
        true
     }
}
total_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "total_count", null) |
        res := resources_map[_]
        true
     }
}
subscriptions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscriptions", null) |
        res := resources_map[_]
        true
     }
}
instance_guid = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_guid", null) |
        res := resources_map[_]
        true
     }
}
