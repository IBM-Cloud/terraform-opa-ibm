package ibmcloud.resources.after.ibm_en_subscription
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_subscription"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_en_subscription").resources[_]
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
destination_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "destination_id", null) |
        res := resources_map[_]
        true
     }
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
attributes = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "attributes", null) |
        res := resources_map[_]
        true
     }
}

