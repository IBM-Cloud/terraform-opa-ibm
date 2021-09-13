package ibmcloud.resources.after.ibm_iam_api_key
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_iam_api_key"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_iam_api_key").resources[_]
}
entity_lock = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "entity_lock", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
file = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "file", null) |
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

