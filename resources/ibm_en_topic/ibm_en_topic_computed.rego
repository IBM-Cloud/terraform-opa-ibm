package ibmcloud.resources.computed.ibm_en_topic
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_topic"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_en_topic").resources[_]
}
subscriptions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscriptions", null) |
        res := resources_map[_]
        true
     }
}
topic_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "topic_id", null) |
        res := resources_map[_]
        true
     }
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
source_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "source_count", null) |
        res := resources_map[_]
        true
     }
}
subscription_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscription_count", null) |
        res := resources_map[_]
        true
     }
}

