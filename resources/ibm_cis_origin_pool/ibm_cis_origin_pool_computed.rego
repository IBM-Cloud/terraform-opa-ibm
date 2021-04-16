package ibmcloud.resources.computed.ibm_cis_origin_pool
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_cis_origin_pool"
}
resources_map[attr]{
    attr := plan.changes_computed_values("ibm_cis_origin_pool").resources[_]
}
modified_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "modified_on", null) |
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
pool_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "pool_id", null) |
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
created_on = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "created_on", null) |
        res := resources_map[_]
        true
     }
}

