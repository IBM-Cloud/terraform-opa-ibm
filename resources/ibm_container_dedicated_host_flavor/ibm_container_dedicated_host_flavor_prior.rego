package ibmcloud.resources.prior.ibm_container_dedicated_host_flavor
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_dedicated_host_flavor"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_dedicated_host_flavor").resources[_]
}
zone = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "zone", null) |
        res := resources_map[_]
        true
     }
}
host_flavor_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "host_flavor_id", null) |
        res := resources_map[_]
        true
     }
}

