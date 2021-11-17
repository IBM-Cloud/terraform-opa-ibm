package ibmcloud.resources.model.ibm_dns_glb
import data.ibmcloud.tfplan as plan
import data.ibmcloud.state as state
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_glb").resources[_]
}
resources_map[attr]{
    attr := state.get_resources("ibm_dns_glb", "managed").resources[_]
}
fallback_pool = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "fallback_pool", null) |
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
az_pools = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "az_pools", null) |
        res := resources_map[_]
        true
     }
}
glb_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "glb_id", null) |
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
ttl = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "ttl", null) |
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
health = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "health", null) |
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
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
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

