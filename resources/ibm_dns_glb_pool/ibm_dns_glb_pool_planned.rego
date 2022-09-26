package ibmcloud.resources.planned.ibm_dns_glb_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_glb_pool"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_glb_pool").resources[_]
}
notification_channel = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "notification_channel", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
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
description = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "description", null) |
        res := resources_map[_]
        true
     }
}
healthy_origins_threshold = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "healthy_origins_threshold", null) |
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
healthcheck_subnets = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "healthcheck_subnets", null) |
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
healthcheck_region = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "healthcheck_region", null) |
        res := resources_map[_]
        true
     }
}

