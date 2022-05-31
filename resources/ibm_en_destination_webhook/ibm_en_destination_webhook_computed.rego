package ibmcloud.resources.computed.ibm_en_destination_webhook
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_destination_webhook"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_en_destination_webhook").resources[_]
}
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
        res := resources_map[_]
        true
     }
}
subscription_names = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscription_names", null) |
        res := resources_map[_]
        true
     }
}
destination_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_id", null) |
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

