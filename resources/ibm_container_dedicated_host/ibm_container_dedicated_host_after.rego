package ibmcloud.resources.after.ibm_container_dedicated_host
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host"
}
resources_map[attr]{
    attr := plan.changes_after_values("ibm_container_dedicated_host").resources[_]
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
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
flavor = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "flavor", null) |
        res := resources_map[_]
        true
     }
}
host_pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_pool_id", null) |
        res := resources_map[_]
        true
     }
}

