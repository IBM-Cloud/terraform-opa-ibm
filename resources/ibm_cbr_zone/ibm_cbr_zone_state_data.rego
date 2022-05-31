package ibmcloud.resources.state.data.ibm_cbr_zone
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cbr_zone"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cbr_zone", "data").resources[_]
}
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}
href = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "href", null) |
        res := resources_map[_]
        true
     }
}
last_modified_by_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_modified_by_id", null) |
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
address_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "address_count", null) |
        res := resources_map[_]
        true
     }
}
addresses = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "addresses", null) |
        res := resources_map[_]
        true
     }
}
created_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_at", null) |
        res := resources_map[_]
        true
     }
}
created_by_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_by_id", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
excluded_count = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "excluded_count", null) |
        res := resources_map[_]
        true
     }
}
zone_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_id", null) |
        res := resources_map[_]
        true
     }
}
id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "id", null) |
        res := resources_map[_]
        true
     }
}
excluded = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "excluded", null) |
        res := resources_map[_]
        true
     }
}
last_modified_at = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "last_modified_at", null) |
        res := resources_map[_]
        true
     }
}
