package ibmcloud.resources.state.ibm_iam_service_api_key
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_service_api_key"
}

resources_map[attr]{
    attr := state.get_resources("ibm_iam_service_api_key", "managed").resources[_]
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
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
iam_service_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "iam_service_id", null) |
        res := resources_map[_]
        true
     }
}
account_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "account_id", null) |
        res := resources_map[_]
        true
     }
}
locked = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locked", null) |
        res := resources_map[_]
        true
     }
}
crn = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "crn", null) |
        res := resources_map[_]
        true
     }
}
created_by = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by", null) |
        res := resources_map[_]
        true
     }
}
apikey = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "apikey", null) |
        res := resources_map[_]
        true
     }
}
store_value = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "store_value", null) |
        res := resources_map[_]
        true
     }
}
file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file", null) |
        res := resources_map[_]
        true
     }
}
entity_tag = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entity_tag", null) |
        res := resources_map[_]
        true
     }
}
modified_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_at", null) |
        res := resources_map[_]
        true
     }
}
