package ibmcloud.resources.computed.ibm_en_subscription_android
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_subscription_android"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_en_subscription_android").resources[_]
}
subscription_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscription_id", null) |
        res := resources_map[_]
        true
     }
}
topic_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "topic_name", null) |
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
destination_type = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_type", null) |
        res := resources_map[_]
        true
     }
}
destination_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_name", null) |
        res := resources_map[_]
        true
     }
}

