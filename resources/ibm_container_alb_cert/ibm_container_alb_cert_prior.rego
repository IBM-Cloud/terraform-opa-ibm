package ibmcloud.resources.prior.ibm_container_alb_cert
import data.ibmcloud.tfplan as plan
# fetches the list of resource's attributes map.
resource_name_ = ret {
    ret := "ibm_container_alb_cert"
}
resources_map[attr]{
    attr := plan.prior_state_values("ibm_container_alb_cert").resources[_]
}
cluster_id = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "cluster_id", null) |
        res := resources_map[_]
        true
     }
}
namespace = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "namespace", null) |
        res := resources_map[_]
        true
     }
}
secret_name = ret {
    ret := {concat(".", [res.type, res.name]): object.get(res.attributes, "secret_name", null) |
        res := resources_map[_]
        true
     }
}

