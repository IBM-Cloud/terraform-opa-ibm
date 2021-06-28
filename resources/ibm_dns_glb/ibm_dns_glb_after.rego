package ibmcloud.resources.after.ibm_dns_glb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_dns_glb").resources[_]
}
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ttl", null) |
        res := resources_map[_]
        true
     }
}
default_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_pools", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
fallback_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "fallback_pool", null) |
        res := resources_map[_]
        true
     }
}
az_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "az_pools", null) |
        res := resources_map[_]
        true
     }
}
instance_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "instance_id", null) |
        res := resources_map[_]
        true
     }
}

