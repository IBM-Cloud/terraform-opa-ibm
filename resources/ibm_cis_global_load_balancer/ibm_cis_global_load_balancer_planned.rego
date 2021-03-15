package ibmcloud.resources.planned.ibm_cis_global_load_balancer
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_global_load_balancer"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_cis_global_load_balancer").resources[_]
}
ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ttl", null) |
        res := resources_map[_]
        true
     }
}
session_affinity = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "session_affinity", null) |
        res := resources_map[_]
        true
     }
}
region_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region_pools", null) |
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
default_pool_ids = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "default_pool_ids", null) |
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
proxied = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "proxied", null) |
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
pop_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pop_pools", null) |
        res := resources_map[_]
        true
     }
}
domain_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "domain_id", null) |
        res := resources_map[_]
        true
     }
}
fallback_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "fallback_pool_id", null) |
        res := resources_map[_]
        true
     }
}

