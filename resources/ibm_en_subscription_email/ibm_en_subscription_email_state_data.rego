package ibmcloud.resources.state.data.ibm_en_subscription_email
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_en_subscription_email"
}

resources_map[attr]{
    attr := state.get_resources("ibm_en_subscription_email", "data").resources[_]
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
updated_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "updated_at", null) |
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
subscription_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "subscription_id", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
