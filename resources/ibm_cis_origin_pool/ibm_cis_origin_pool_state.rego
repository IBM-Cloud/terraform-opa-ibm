package ibmcloud.resources.state.ibm_cis_origin_pool
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_origin_pool"
}

resources_map[attr]{
    attr := state.get_resources("ibm_cis_origin_pool", "managed").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
minimum_origins = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "minimum_origins", null) |
        res := resources_map[_]
        true
     }
}
origins = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origins", null) |
        res := resources_map[_]
        true
     }
}
pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pool_id", null) |
        res := resources_map[_]
        true
     }
}
check_regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "check_regions", null) |
        res := resources_map[_]
        true
     }
}
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
        res := resources_map[_]
        true
     }
}
monitor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "monitor", null) |
        res := resources_map[_]
        true
     }
}
healthy = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "healthy", null) |
        res := resources_map[_]
        true
     }
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
        res := resources_map[_]
        true
     }
}
notification_email = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notification_email", null) |
        res := resources_map[_]
        true
     }
}
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}
cis_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cis_id", null) |
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
health = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health", null) |
        res := resources_map[_]
        true
     }
}
