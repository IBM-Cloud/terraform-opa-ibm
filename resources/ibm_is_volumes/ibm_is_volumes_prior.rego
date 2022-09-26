package ibmcloud.resources.prior.ibm_is_volumes
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_is_volumes"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_is_volumes").resources[_]
}
volume_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "volume_name", null) |
        res := resources_map[_]
        true
     }
}
zone_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone_name", null) |
        res := resources_map[_]
        true
     }
}

