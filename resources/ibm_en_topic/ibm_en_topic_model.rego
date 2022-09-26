package ibmcloud.resources.model.ibm_en_topic
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_topic"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_en_topic").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_en_topic", "managed").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
subscription_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscription_count", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
sources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "sources", null) |
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

