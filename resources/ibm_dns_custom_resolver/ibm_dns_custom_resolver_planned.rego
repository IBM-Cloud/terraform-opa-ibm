package ibmcloud.resources.planned.ibm_dns_custom_resolver
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_dns_custom_resolver"
}
resources_map[attr]{
    attr := plan.planned_values("ibm_dns_custom_resolver").resources[_]
}
locations = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "locations", null) |
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
enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "enabled", null) |
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
name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "name", null) |
        res := resources_map[_]
        true
     }
}

