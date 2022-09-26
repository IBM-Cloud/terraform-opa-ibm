package ibmcloud.resources.computed.ibm_container_dedicated_host
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_container_dedicated_host").resources[_]
}
host_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_id", null) |
        res := resources_map[_]
        true
     }
}
life_cycle = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "life_cycle", null) |
        res := resources_map[_]
        true
     }
}
resources = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "resources", null) |
        res := resources_map[_]
        true
     }
}
workers = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "workers", null) |
        res := resources_map[_]
        true
     }
}
placement_enabled = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "placement_enabled", null) |
        res := resources_map[_]
        true
     }
}

