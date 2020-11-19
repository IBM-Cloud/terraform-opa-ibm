package ibmcloud.resources.prior.ibm_container_vpc_cluster_alb
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name = ret {
    ret := "ibm_container_vpc_cluster_alb"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_vpc_cluster_alb").resources[_]
}
alb_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "alb_id", null) |
        res := resources_map[_]
        true
     }
}

