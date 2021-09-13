package ibmcloud.resources.after.ibm_cis_origin_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_origin_pool"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_cis_origin_pool").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
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
origins = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "origins", null) |
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
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
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
notification_email = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notification_email", null) |
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
check_regions = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "check_regions", null) |
        res := resources_map[_]
        true
     }
}

