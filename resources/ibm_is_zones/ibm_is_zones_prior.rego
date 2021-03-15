package ibmcloud.resources.prior.ibm_is_zones
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_zones"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_zones").resources[_]
}
region_ = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "region_", null) |
        res := resources_map[_]
        true
     }
}
status = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "status", null) |
        res := resources_map[_]
        true
     }
}

